import 'package:flutter/material.dart';

class LabelWithValue extends StatelessWidget {

  final String label;
  final String value;
  final double height;
  final double inputHeight;
  final bool isLong;
  final Function onEditProfileChanged;


   LabelWithValue({ this.label, this.value, this.height = 70.0, this.inputHeight  = 30, this.isLong = false, this.onEditProfileChanged, });

  @override
  Widget build(BuildContext context) {

    var orientation = MediaQuery.of(context).orientation;
    var screenSize = MediaQuery.of(context).size;

    return Container(
      // padding: EdgeInsets.only(top : 10),
      height: this.height,
      width: orientation == Orientation.landscape ? isLong == true ? screenSize.width * 0.66 :  screenSize.width * 0.33 : screenSize.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left : 25.0),
            child: Text(
              this.label,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.normal,
                color: Colors.black54
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            height: this.inputHeight,
            width:orientation == Orientation.landscape ? isLong == true ? screenSize.width * 0.62 :  screenSize.width * 0.30 : screenSize.width,
            child: TextField(
              controller: TextEditingController(text: this.value ),
              onChanged: (value) {
                this.onEditProfileChanged(value);
              },
            ),
          )
        ],
      ),
    );
  }
}
