import 'package:flutter/material.dart';

class DrawerItems extends StatelessWidget {

  final String title;
  final IconData icon;
  final Function onPressed;

  const DrawerItems({ this.title, this.icon, this.onPressed });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: ListTile(
        leading: Icon(
          this.icon,
          size: 33,
          color: Color(0xFF013220),
        ),

        title: Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xFF013220),
              fontSize: 20.0,
              letterSpacing: 1
            ),
        ),

        onTap: this.onPressed,
      ),
    );
  }
}
