import 'package:bmi_app/Model/const.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'containerBoxes.dart';

class SliderHight extends StatefulWidget {
  @override
  State<SliderHight> createState() => _SliderHightState();
}

class _SliderHightState extends State<SliderHight> {
  ConstVal _constVal = ConstVal();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: ContainerBoxes(
        cardchild: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hight',
              style: GoogleFonts.lato(
                fontSize: 21.0,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              _constVal.Hightcont.toString(),
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
              ),
            ),
            Slider(
              value: _constVal.Hightcont.toDouble(),
              onChanged: (double HightSlider) {
                setState(
                  () => _constVal.Hightcont = HightSlider.round(),
                );
              },
              min: 120.0,
              max: 220.0,
              activeColor: Colors.white,
              inactiveColor: Color(0xEE2D3855),
            ),
          ],
        ),
      ),
    );
  }
}
