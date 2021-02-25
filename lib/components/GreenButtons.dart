import 'package:flutter/material.dart';

class GreenButton extends StatelessWidget {
  final String buttonText;
  final Function onClicked;

  const GreenButton({ this.buttonText, this.onClicked});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onClicked,
      child: Container(
        width: 150,
        height: 50.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          border: Border.all(
              color: Color(0xFF378953),
              width: 1.5,
              style: BorderStyle.solid
          )
        ),
        child: Center(
          child: Text(
            this.buttonText,
            style: TextStyle(
              color: Color(0xFF378953),
              fontSize: 18.0,
            ),
          ),
        ),
      ),
    );
  }
}
