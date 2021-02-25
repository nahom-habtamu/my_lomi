import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_lomi/components/ActiveFromNav.dart';
import 'package:my_lomi/components/MainIconButton.dart';
import 'package:my_lomi/components/NotActiveFromNav.dart';
import 'package:my_lomi/constants/textStyles.dart';

class MatchScreen extends StatefulWidget {
  @override
  _MatchScreenState createState() => _MatchScreenState();
}
class _MatchScreenState extends State<MatchScreen> {

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var orientation = MediaQuery.of(context).orientation;
    var showProfileWidget =  Center(
      child: Container(
        width: 256,
        margin: EdgeInsets.only(top: 15.0),
        height: screenSize.height * 0.35,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              image: NetworkImage('https://media.istockphoto.com/photos/smiling-businesswoman-looking-at-camera-webcam-make-conference-call-picture-id1129638608?k=6&m=1129638608&s=612x612&w=0&h=8OhKQCq_elLsW_PAWA4n8pzQy3mlkf5a_ztp2Nbv8Y8='),
              fit: BoxFit.fill
          ),
        ),
      ),
    );
    var showNameWidget  = Text(
        "Sarah James",
        style: boldTwenty
    );
    var showAgeWidget =  Text(
    "22",
    style: boldTwenty
    );
    var showAddressWidget = Text(
      "London",
      style: TextStyle(
          fontSize: 20.0,
          color: Colors.black87
      ),
    );

    return Scaffold(
      backgroundColor: Color(0xFFB6D1BE),
      body: SafeArea(
        child: Column(
          children: [
            if(orientation == Orientation.landscape)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  showProfileWidget ,
                  Column(
                    children: [
                      showNameWidget,
                      SizedBox(
                        height: 5.0,
                      ),
                      showAgeWidget,
                      SizedBox(
                        height: 5.0,
                      ),
                      showAddressWidget,
                      SizedBox(
                        height: 15.0,
                      ),
                    ],
                  )
                ],
              ),
           if(orientation == Orientation.portrait)
             Column(
               children: [
                 showProfileWidget,
                 showNameWidget,
                 SizedBox(
                   height: 5.0,
                 ),
                 showAgeWidget,
                 SizedBox(
                   height: 5.0,
                 ),
                 showAddressWidget,
                 SizedBox(
                   height: 15.0,
                 ),
               ],
             ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MainIconButton(
                  buttonIcon: FontAwesomeIcons.times,
                  buttonText: "DisLike",
                  onPressed: (){
                    print("DisLike is Pressed");
                  },
                ),

                MainIconButton(
                  buttonIcon: FontAwesomeIcons.lemon,
                  buttonText: "Throw a Lomi",
                  onPressed: (){
                    print("Throw a Lomi is Pressed");
                  },
                ),

                MainIconButton(
                  buttonText: "Like",
                  onPressed: (){
                    print("Like is Pressed");
                  },
                ),
              ],
            ),
            // SizedBox(
            //   height:
            //     orientation == Orientation.landscape ? screenSize.height * 0.125 :
            //         screenSize.height * 0.192
            // ),
            // Container(
            //   width: double.infinity,
            //   height: 100,
            //   decoration: BoxDecoration(
            //     color: Color(0xFFE3DADA),
            //     borderRadius: BorderRadius.only(
            //       topLeft: Radius.circular(35),
            //       topRight: Radius.circular(35),
            //     ),
            //   ),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //     crossAxisAlignment: CrossAxisAlignment.center,
            //     children: [
            //         ActiveFromNav(
            //           onPressed: (){},
            //           buttonText: "Home",
            //           iconData: FontAwesomeIcons.home,
            //         ),
            //
            //         NotActiveFromNav(
            //           onPressed: (){
            //             Navigator.pushNamed(context, "likes_screen");
            //           },
            //           iconData: FontAwesomeIcons.heart,
            //         ),
            //
            //         NotActiveFromNav(
            //           onPressed: (){},
            //           iconData: FontAwesomeIcons.bell,
            //         ),
            //         NotActiveFromNav(
            //           onPressed: (){
            //             Navigator.pushNamed(context, "setting_screen");
            //           },
            //           iconData: FontAwesomeIcons.userCog,
            //         )
            //     ],
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}


