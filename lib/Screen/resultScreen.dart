import 'package:bmi_app/components/buttonRecalculator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/containerBoxes.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen(
      {required this.bmiResult,
      required this.interpertion,
      required this.resultText});
  final String bmiResult;
  final String resultText;
  final String interpertion;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          shadowColor: Colors.black,
          backgroundColor: Color(0xEE2D3855),
          title: Center(
            child: Text(
              'Wight',
              style: GoogleFonts.lato(
                fontSize: 24.0,
              ),
            ),
          ),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'Your result',
                  style: GoogleFonts.lato(
                    fontSize: 28.0,
                  ),
                ),
              ),
              SizedBox(
                height: 12.0,
              ),
              Expanded(
                flex: 4,
                child: ContainerBoxes(
                  cardchild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Center(
                        child: Text(
                          resultText.toUpperCase(),
                          style: TextStyle(
                            fontSize: 24.0,
                            color: Colors.green,
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          bmiResult,
                          style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(13.0),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              interpertion,
                              style: TextStyle(
                                fontSize: 22.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ButtonRecalculatoer(),
            ],
          ),
        ),
      ),
    );
  }
}
