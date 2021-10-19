import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalButton extends StatelessWidget {
  final String text;
  final int fillColor;
  final int textColor;
  final double textSize;
  final Function callBack;

  const CalButton({
    Key? key,
    required this.fillColor,
    required this.text,
    this.textSize = 28,
    this.textColor = 0xffffffff,
    required this.callBack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: SizedBox(
        width: 65,
        height: 65,
        child: FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          child: Text(
            text,
            style: GoogleFonts.rubik(
                textStyle: TextStyle(
              fontSize: 24,
            )),
          ),
          onPressed: () {
            callBack(text);
          },
          color: fillColor != null ? Color(fillColor) : null,
          textColor: Color(textColor),
        ),
      ),
    );
  }
}
