import 'package:flutter/material.dart';

class RedText extends StatelessWidget {
  final String text;
  const RedText({ this.text });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30,50,30,0),
      child: Text(
       this.text ,
        style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.w700,
            color: Color(0xFFCA4848),
            wordSpacing: 5,
            letterSpacing: 3.0,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
