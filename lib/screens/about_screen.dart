import 'package:flutter/material.dart';
import 'package:my_lomi/components/CustomAppBar.dart';
import 'package:my_lomi/constants/textStyles.dart';

class AboutScreen extends StatefulWidget {
  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
            title: "About Us",
            leading: true,
            onBackPressed: (){},
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top : 40.0),
              child: Center(
                child: Text(
                  "Produced By",
                  style: fatBold.copyWith(
                    letterSpacing: 2.0
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 20.0,
            ),

            Container(
              height: 60.0,
              width: 200.0,
              color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Pro",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                      color: Color(0xFF216FB8)
                    ),
                  ),

                  Text(
                    "Nerds",
                    style: TextStyle(
                    fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                        color: Color(0xFFBA21D3)
                    ),
                  )
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
