import 'package:flutter/material.dart';
class Input extends StatelessWidget {
  final String hintText;
  final Function onInputChange;
  const Input({this.hintText, this.onInputChange });

  @override
  Widget build(BuildContext context) {
    var screenWidth= MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth * 0.7 ,
      height: 70,
      child: TextField(
        style: TextStyle(
          fontSize: 20.0,
          height: 1.8,
        ),
        onChanged: (value) {
          onInputChange(value);
        },
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          hintText: this.hintText,
          contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 40.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
                Radius.circular(22.0)
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors.grey, width: 1.0
            ),
            borderRadius: BorderRadius.all(
                Radius.circular(22.0)
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors.grey, width: 2.0
            ),
            borderRadius: BorderRadius.all(
                Radius.circular(22.0)
            ),
          ),
        ),
      ),
    );
  }
}
