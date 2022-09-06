import 'package:flutter/material.dart';
import 'package:flutter_bmi/Newwidget.dart';
import 'constant.dart';
import 'input_page.dart';
import 'constant.dart';
import 'brain.dart';

// ignore: camel_case_types
class resultpage extends StatelessWidget {
  resultpage(
      {required this.bmiResult,
      required this.interpretation,
      required this.resultText});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                child: Text(
                  'YOUR RESULT',
                  style: ktitletextstyle,
                ),
              ),
            ),
            Expanded(
                flex: 5,
                child: NewWidget(
                    colour: Color(0xFF1D1E33),
                    cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          resultText.toUpperCase(),
                          style: kresulttextstyle,
                        ),
                        Text(
                          bmiResult,
                          style: kbmitextstyle,
                        ),
                        Text(
                          interpretation,
                          textAlign: TextAlign.center,
                          style: kbodytextstyle,
                        )
                      ],
                    ))),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                padding: EdgeInsets.all(20),
                child: Text(
                  'RE-CALCULATE',
                  style: klargebuttontextstyle,
                ),
                width: double.infinity,
                height: buttomcontainerheight,
                color: Color(0xFFEB1555),
                margin: EdgeInsets.only(top: 10),
                alignment: Alignment.center,
              ),
            ),
          ],
        ));
  }
}
