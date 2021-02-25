import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : Column(
              children: [
                Center(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0,50,0,30),
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.lightGreen, width: 3.9, style: BorderStyle.solid),
                        borderRadius: BorderRadius.all(
                            Radius.circular(500.0)
                        )
                    ),
                    child: Image.asset(
                      'images/logo.jpg',
                      width: 150,
                      height: 150,
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical : 0 , horizontal : 40.0),
                  child: Text(
                    "For Those Who Got A Taste",
                    style: TextStyle(
                        color: Color(0xFF86514A),
                        fontSize: 40.0,
                        letterSpacing: 3.0,
                        wordSpacing: 5.0
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 100.0,
                ),

                Text(
                  "Proud Product Of Ethiopian Culture",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 22.0,
                      fontWeight: FontWeight.w900
                  ),
                  textAlign: TextAlign.center,
                )
              ]
      ),
    );
  }
}
