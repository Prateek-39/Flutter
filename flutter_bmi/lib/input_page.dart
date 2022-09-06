// import 'dart:html';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bmi/brain.dart';
import 'package:flutter_bmi/constant.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon widget.dart';
import 'Newwidget.dart';
import 'constant.dart';
import 'result_page.dart';
import 'brain.dart';

const inactivecardcolor = Color(0xFF111328);
const activecardcolor = Color(0xFF1D1E33);
const buttomcontainerheight = 80.0;

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int height = 175;
  int weight = 60;
  int age = 22;

  Color maleCardColor = inactivecardcolor;
  Color femaleCardColor = inactivecardcolor;

  void updateColor(Gender selectedGender) {
    if (selectedGender == Gender.male) {
      if (maleCardColor == inactivecardcolor) {
        maleCardColor = activecardcolor;
        femaleCardColor = inactivecardcolor;
      } else {
        maleCardColor = inactivecardcolor;
      }
    }

    if (selectedGender == Gender.female) {
      if (femaleCardColor == inactivecardcolor) {
        femaleCardColor = activecardcolor;
        maleCardColor = inactivecardcolor;
      } else {
        femaleCardColor = inactivecardcolor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0A0E21),
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        backgroundColor: activecardcolor,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Row(
            children: [
//////////////////////////////////////////////////////////////////

              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      updateColor(Gender.male);
                    });
                  },
                  child: NewWidget(
                    colour: maleCardColor,
                    cardchild: Icon1(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                  ),
                ),
              ),

/////////////////////////////////////////////////////////////////

              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      updateColor(Gender.female);
                    });
                  },
                  child: NewWidget(
                    colour: femaleCardColor,
                    cardchild: Icon1(
                      icon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                  ),
                ),
              )
            ],
          )),

///////////////////////////////////////////////////////////////////

          Expanded(
            child: NewWidget(
              colour: activecardcolor,
              cardchild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: klabelTextstyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kNumberTextstyle,
                      ),
                      Text(
                        'cm',
                        style: klabelTextstyle,
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Colors.white,
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color.fromARGB(19, 242, 4, 75),
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 12.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 24.0),
                    ),
                    child: Slider(
                        value: height.floorToDouble(),
                        min: 120,
                        max: 220,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        }),
                  )
                ],
              ),
            ),
          ),

////////////////////////////////////////////////////////////////////

          Expanded(
              child: Row(
            children: [
              Expanded(
                child: NewWidget(
                  colour: activecardcolor,
                  cardchild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'WEIGHT',
                        style: klabelTextstyle,
                      ),
                      Text(
                        weight.toString(),
                        style: kNumberTextstyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FloatingActionButton(
                            onPressed: () {
                              setState(() {
                                weight--;
                              });
                            },
                            backgroundColor: Color(0xFF4C4F5E),
                            child: Icon(
                              FontAwesomeIcons.minus,
                              color: Colors.white,
                            ),
                          ),
                          /////////////////////////////////
                          SizedBox(
                            width: 10,
                          ),
                          //////////////////////////////////
                          FloatingActionButton(
                            onPressed: () {
                              setState(() {
                                weight++;
                              });
                            },
                            backgroundColor: Color(0xFF4C4F5E),
                            child: Icon(
                              FontAwesomeIcons.add,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

/////////////////////////////////////////////////////////////////

              Expanded(
                child: NewWidget(
                  colour: activecardcolor,
                  cardchild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'AGE',
                        style: klabelTextstyle,
                      ),
                      Text(
                        age.toString(),
                        style: kNumberTextstyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FloatingActionButton(
                            onPressed: () {
                              setState(() {
                                age--;
                              });
                            },
                            backgroundColor: Color(0xFF4C4F5E),
                            child: Icon(
                              FontAwesomeIcons.minus,
                              color: Colors.white,
                            ),
                          ),
                          /////////////////////////////////
                          SizedBox(
                            width: 10,
                          ),
                          //////////////////////////////////
                          FloatingActionButton(
                            onPressed: () {
                              setState(() {
                                age++;
                              });
                            },
                            backgroundColor: Color(0xFF4C4F5E),
                            child: Icon(
                              FontAwesomeIcons.add,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          )),

//////////////////////////////////////////////////////////////////////////////////

          GestureDetector(
            onTap: () {
              Calculatorbrain calc =
                  Calculatorbrain(height: height, weight: weight);
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => resultpage(
                          bmiResult: calc.calculatebmi(),
                          resultText: calc.getResult(),
                          interpretation: calc.getInterpretation(),
                        )),
              );
            },
            child: Container(
              child: Center(
                child: Text(
                  'CALCULATE',
                  style: klargebuttontextstyle,
                ),
              ),
              width: double.infinity,
              height: buttomcontainerheight,
              color: Color(0xFFEB1555),
              margin: EdgeInsets.only(top: 10),
            ),
          ),
        ],
      ),
    );
  }
}



//////////////////////

