import 'package:flutter/material.dart';
import 'package:my_lomi/constants/textStyles.dart';


class SettingItem extends StatelessWidget {

  final Function onPressed;
  final String itemText;

  const SettingItem({ this.onPressed , this.itemText });

  @override
  Widget build(BuildContext context) {

    var orientation = MediaQuery.of(context).orientation;
    return GestureDetector(
      child: Container(
        width: double.infinity,
        height:
          orientation == Orientation.portrait ? MediaQuery.of(context).size.height * 0.076 :
                                                MediaQuery.of(context).size.height * 0.15,
          margin: EdgeInsets.only(top: 2.3),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(25.0,25,0,0),
          child: Text(
            this.itemText,
            style: settingItemText,
          ),
        ),
      ),
      onTap: onPressed,
    );
  }
}
