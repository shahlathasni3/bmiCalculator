import 'package:bmi_calculator/Constants.dart';
import 'package:bmi_calculator/Extracted_Buttons.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'input_page.dart';

class ResultScreen extends StatelessWidget {

  ResultScreen({required this.bmiResult, required this.actualbmiResultValue, required this.interpretation});


    final String bmiResult;
    final String actualbmiResultValue;
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
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: reusableCard(
              kolor: Color(0xFF1D1F33),
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    bmiResult,
                    style: kNormalTextStyle,
                  ),
                  Text(
                    actualbmiResultValue,
                    style: kLargeTextStyle,
                  ),
                  Text(
                    interpretation,
                    style: kInterpretationStyle,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          BottomButton(buttonName: 'CALCULATE AGAIN', onPressed: Navigator.of(context).pop)
        ],
      ),
    );
  }
}
