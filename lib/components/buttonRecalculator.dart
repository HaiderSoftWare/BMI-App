import 'package:bmi_app/Screen/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonRecalculatoer extends StatelessWidget {
  const ButtonRecalculatoer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ContainerCalcultor2(
            tittle: Text(
              'RE-CALCULATOR',
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 22.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ContainerCalcultor2 extends StatelessWidget {
  ContainerCalcultor2({required this.tittle});
  final Text tittle;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Myscreen(),
          ),
        );
      },
      child: Container(
        child: Center(child: tittle),
        margin: EdgeInsets.all(8.0),
        height: 80.0,
        decoration: BoxDecoration(
          color: Color(0xEE2D3855),
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
    );
  }
}
