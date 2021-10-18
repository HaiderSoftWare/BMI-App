import 'package:flutter/material.dart';

class ContainerBoxes extends StatelessWidget {
  ContainerBoxes({required this.cardchild});
  final Widget cardchild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardchild,
      margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Color(0xEE2D3855),
      ),
    );
  }
}
