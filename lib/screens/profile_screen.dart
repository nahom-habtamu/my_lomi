import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_lomi/constants/textStyles.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}
class _ProfileScreenState extends State<ProfileScreen> {

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var orientation = MediaQuery.of(context).orientation;

    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/dog.jpg"),
            fit: BoxFit.cover,
          ),
        ),
       child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(26.0,36.0,0,0),
                    child: Column(
                      children: [
                        Text(
                            "Sarah James",
                            style: boldTwenty.copyWith(
                              letterSpacing: 2.0
                            )
                        ),

                        SizedBox(
                          height: 5.0,
                        ),

                        Text(
                          "London",
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.black87
                          ),
                        ),

                        SizedBox(
                          height: 5.0,
                        ),

                        Text(
                            "22",
                            style: boldTwenty
                        ),

                      ],
                    ),
                  ),
                  IconButton(
                      padding: const EdgeInsets.fromLTRB(0,0,36.0,0),
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.red[900],
                        size: 39,
                      ),
                      onPressed: (){}
                  )
                ],
              ),
              SizedBox(
                height: orientation == Orientation.landscape ? screenHeight * 0.1 : screenHeight * 0.45
              ),

              Container(
                margin: EdgeInsets.symmetric(vertical : 0, horizontal : 25.0),
                width: orientation == Orientation.landscape ? 500 : double.infinity ,
                height: orientation == Orientation.landscape ? screenHeight * 0.4 : 200,
                decoration: BoxDecoration(
                  color: Colors.white24,
                  borderRadius: BorderRadius.all(
                    Radius.circular(25.0)
                  )
                ),
                child : Padding(
                  padding: EdgeInsets.fromLTRB(25,35,25,0),
                  child: Text(
                    "Sarah Loves to dance and watch football",
                    style: boldTwenty.copyWith(
                      color: Colors.black,
                      letterSpacing: 2.0,
                      wordSpacing: 5.0
                    ),
                    textAlign: TextAlign.center,
                  ),
                )
              )
            ],
          )
       ),
      ),
    );
  }
}
