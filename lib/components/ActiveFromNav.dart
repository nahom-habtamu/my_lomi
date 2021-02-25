import 'package:flutter/material.dart';
import 'package:my_lomi/constants/textStyles.dart';

class ActiveFromNav extends StatelessWidget {

  final Function onPressed;
  final String buttonText;
  final IconData iconData;

  const ActiveFromNav({ this.onPressed, this.buttonText, this.iconData});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: 150.0,
        height: 55.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
              Radius.circular(25.0)
          ),
        ),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
              Icon(
                iconData,
                size: 32,
                color: Colors.red,
              ),

              Text(
                buttonText,
                style: activeFromNavText,
              )
          ],
        ),
      ),
      onTap: onPressed,
    );
  }
}
