import 'package:flutter/material.dart';

class RedButton extends StatelessWidget {
  final String buttonText;
  final Function onClicked;

  const RedButton({ this.buttonText, this.onClicked});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 0),
      child: Material(
        color: Color(0xFFE22828),
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        elevation: 5.0,
        child: MaterialButton(
          onPressed: this.onClicked,
          height: 50.0,
          minWidth: 200.0,
          child: Text(
            'Sign In',
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
    );
  }
}
