import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:bmi_app/Model/const.dart';

import 'containerBoxes.dart';

class AgeContainer extends StatefulWidget {
  @override
  _AgeContainerState createState() => _AgeContainerState();
}

class _AgeContainerState extends State<AgeContainer> {
  ConstVal _constVal = ConstVal();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ContainerBoxes(
          cardchild: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Age',
                style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 21.0,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                _constVal.Agecont.toString(),
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 18.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.remove,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      setState(() {
                        _constVal.decrmentage();
                      });
                    },
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  FloatingActionButton(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.add,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      setState(() {
                        _constVal.incrmentage();
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
