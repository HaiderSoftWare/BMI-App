import 'package:bmi_app/Logic/logic.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bmi_app/Model/const.dart';

import '../Screen/resultScreen.dart';

class ButtonNavi extends StatefulWidget {
  const ButtonNavi({Key? key}) : super(key: key);

  @override
  _ButtonNaviState createState() => _ButtonNaviState();
}

class _ButtonNaviState extends State<ButtonNavi> {
  ConstVal _constVal = ConstVal();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextButton(
            onPressed: () {
              CalculatorBrain clac = CalculatorBrain(
                  height: _constVal.Hightcont, weight: _constVal.WightCont);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultScreen(
                    bmiResult: clac.bmicalculator(),
                    resultText: clac.getResult(),
                    interpertion: clac.getInterpretation(),
                  ),
                ),
              );
            },
            child: Container(
              child: Center(
                child: Text(
                  'CALCULATOR',
                  style: GoogleFonts.lato(fontSize: 22.0, color: Colors.white),
                ),
              ),
              margin: EdgeInsets.all(8.0),
              height: 80.0,
              decoration: BoxDecoration(
                color: Color(0xEE2D3855),
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
