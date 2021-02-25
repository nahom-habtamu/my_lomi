import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget CustomAppBar({
  String title, bool leading = false, Function onBackPressed , Color backgroundColor = Colors.white, double length = 80.0
}){

  return AppBar(
    backgroundColor: Colors.white,
    elevation: 5.0,
    toolbarHeight: length,
    centerTitle: true,
    leading: leading == true ? IconButton(
      icon: Icon(
        Icons.arrow_back,
        color: Colors.red[900],
        size: 30,
      ),
      onPressed: (){
      },
    ) : null,

    title: Padding(
      padding: const EdgeInsets.only(left: 13.0),
      child: Text(
        title,
        style: TextStyle(
          color: Colors.red[900],
          fontSize: 25.0,
        ),
      ),
    ),
  );
}