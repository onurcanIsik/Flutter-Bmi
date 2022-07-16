import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:unicons/unicons.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isGender = false;
  double sliderValue = 1;
  int weight = 0;
  int age = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0b0f1f),
      appBar: AppBar(
        backgroundColor: const Color(0xffe7144c),
        title: Text(
          "BMI GO",
          style: GoogleFonts.comfortaa(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isGender = true;
                    });
                  },
                  child: Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      color: isGender
                          ? const Color(0xffe7144c)
                          : const Color(0xff1b1a2e),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(
                      UniconsLine.mars,
                      color: isGender
                          ? Colors.white
                          : Colors.grey.withOpacity(0.5),
                      size: 100,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isGender = false;
                    });
                  },
                  child: Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      color: !isGender
                          ? const Color(0xffe7144c)
                          : const Color(0xff1b1a2e),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(
                      UniconsLine.venus,
                      color: !isGender
                          ? Colors.white
                          : Colors.grey.withOpacity(0.5),
                      size: 100,
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: const Color(0xff1b1a2e),
              borderRadius: BorderRadius.circular(12),
            ),
            height: 200,
            width: 315,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "HEIGHT",
                    style: GoogleFonts.comfortaa(
                      fontSize: 25,
                      color: Colors.white.withOpacity(0.6),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      sliderValue.toStringAsFixed(0),
                      style: GoogleFonts.comfortaa(
                        fontSize: 35,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "cm",
                      style: GoogleFonts.comfortaa(
                        fontSize: 30,
                        color: Colors.white.withOpacity(0.6),
                      ),
                    ),
                  ],
                ),
                Slider(
                  inactiveColor: Colors.grey,
                  activeColor: HexColor("#004369"),
                  thumbColor: HexColor("#DB1F48"),
                  value: sliderValue,
                  max: 300,
                  onChanged: (double value) {
                    setState(() {
                      sliderValue = value;
                    });
                  },
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xff1b1a2e),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  height: 150,
                  width: 150,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "WEIGHT",
                        style: GoogleFonts.comfortaa(
                          color: Colors.white.withOpacity(0.6),
                          fontSize: 22,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          weight.toString(),
                          style: GoogleFonts.comfortaa(
                              fontSize: 50, color: Colors.white),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: HexColor("#DB1F48"),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: IconButton(
                              icon: const Icon(
                                UniconsLine.minus,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                setState(() {
                                  if (weight <= 0) {
                                    weight = 0;
                                  } else {
                                    weight -= 1;
                                  }
                                });
                              },
                            ),
                          ),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: HexColor("#DB1F48"),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: IconButton(
                              icon: const Icon(
                                UniconsLine.plus,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                setState(() {
                                  weight += 1;
                                });
                              },
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xff1b1a2e),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  height: 150,
                  width: 150,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "AGE",
                        style: GoogleFonts.comfortaa(
                          color: Colors.white.withOpacity(0.6),
                          fontSize: 22,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          age.toString(),
                          style: GoogleFonts.comfortaa(
                              fontSize: 50, color: Colors.white),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: HexColor("#DB1F48"),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: IconButton(
                              icon: const Icon(
                                UniconsLine.minus,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                setState(() {
                                  if (age <= 0) {
                                    age = 0;
                                  } else {
                                    age -= 1;
                                  }
                                });
                              },
                            ),
                          ),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: HexColor("#DB1F48"),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: IconButton(
                              icon: const Icon(
                                UniconsLine.plus,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                setState(() {
                                  age += 1;
                                });
                              },
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                decoration: BoxDecoration(
                  color: HexColor("#DB1F48"),
                  borderRadius: BorderRadius.circular(12),
                ),
                height: 70,
                width: MediaQuery.of(context).size.width / 1.25,
                child: TextButton(
                  child: Text(
                    "CALCULATE",
                    style: GoogleFonts.comfortaa(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
