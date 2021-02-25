import 'package:flutter/material.dart';
class NotActiveFromNav extends StatelessWidget {

  final Function onPressed;
  final IconData iconData;

  const NotActiveFromNav({ this.onPressed, this.iconData});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: 50.0,
        height: 25.0,
        child: Container(
          child: Icon(
              iconData,
              size: 32,
              color: Colors.red,
            ),
        ),
      ),
      onTap: onPressed,
    );
  }
}
