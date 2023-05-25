import 'package:bmi_calculator/input_page.dart';
import 'package:bmi_calculator/reusable_cards.dart';
import 'package:flutter/material.dart';

const kTitleTextStyle = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 50,
);
const kResultTextStyle = TextStyle(
  color: Color(0xff24d876),
  fontSize: 22,
  fontWeight: FontWeight.bold,
);
const kBmiTextStyle = TextStyle(
  fontSize: 100,
  fontWeight: FontWeight.bold,
);
const kBodyTextStyle = TextStyle(
  fontSize: 22,
);

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key, required this.bmiResult, required this.resultText, required this.interpretation}) : super(key: key);
  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
           Expanded(
            child: Container(
              padding: const EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: const Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: activeCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:  <Widget>[
                  Text(
                    resultText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBmiTextStyle,
                  ),
                  Text(
                    interpretation,
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(onTap:(){
            Navigator.pop(context);
          }, buttonTitle: 'RE-CALCULATE')
        ],
      ),
    );
  }
}
