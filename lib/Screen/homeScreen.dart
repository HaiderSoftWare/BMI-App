import 'package:bmi_app/components/ageContainer.dart';
import 'package:bmi_app/components/buttonNavi.dart';
import 'package:bmi_app/components/slider.dart';
import 'package:bmi_app/components/wightContainer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Myscreen extends StatefulWidget {
  const Myscreen({Key? key}) : super(key: key);

  @override
  _MyscreenState createState() => _MyscreenState();
}

class _MyscreenState extends State<Myscreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'BMI',
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 24.0,
              ),
            ),
          ),
          backgroundColor: Color(0xEE2D3855),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Row(
                      children: [
                        WightContainer(),
                        AgeContainer(),
                      ],
                    ),
                    SliderHight(),
                    ButtonNavi(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
