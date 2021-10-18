import 'package:bmi_app/Model/const.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'containerBoxes.dart';

class WightContainer extends StatefulWidget {
  const WightContainer({Key? key}) : super(key: key);

  @override
  _WightContainerState createState() => _WightContainerState();
}

class _WightContainerState extends State<WightContainer> {
  ConstVal _constVal = ConstVal();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: ContainerBoxes(
        cardchild: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Wight',
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 21.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              _constVal.WightCont.toString(),
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
                      _constVal.decrmentawight();
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
                      _constVal.incrmentwight();
                    });
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
