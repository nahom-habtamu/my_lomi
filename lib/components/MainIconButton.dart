import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_lomi/constants/textStyles.dart';
class MainIconButton extends StatelessWidget {

  final IconData buttonIcon;
  final String buttonText;
  final Function onPressed;

  const MainIconButton({ this.buttonIcon = Icons.favorite , this.buttonText, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(
        children: [
          FaIcon(
              buttonIcon,
              color: Colors.white,
              size: 54,
          ),

          SizedBox(
            height: 10.0,
          ),

          Text(
            buttonText,
            style: iconButtonText,
          )
        ],
      ),

      onTap: onPressed,
    );
  }
}
