import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_lomi/components/ActiveFromNav.dart';
import 'package:my_lomi/components/CustomAppBar.dart';
import 'package:my_lomi/components/DisplayMatches.dart';
import 'package:my_lomi/components/NotActiveFromNav.dart';
import 'package:my_lomi/services/ListOfMatch.dart';

class LikesScreen extends StatefulWidget {
  @override
  _LikesScreenState createState() => _LikesScreenState();
}

class _LikesScreenState extends State<LikesScreen> {
  @override
  Widget build(BuildContext context) {

    var listOfMatches = ListOfMatch().listOfMatch;
    var orientation = MediaQuery.of(context).orientation;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
              height:
                  orientation == Orientation.portrait ? MediaQuery.of(context).size.height * 0.70 :
                  MediaQuery.of(context).size.height * 0.595,

              child: ListView.builder(
                  itemCount: listOfMatches.length,
                  itemBuilder: (context, index){
                    return DisplayMatch(
                      onChatIconPressed: (){},
                      address: listOfMatches[index].matchAddress,
                      age: listOfMatches[index].matchAge,
                      name: listOfMatches[index].matchName,
                      photoUrl: listOfMatches[index].matchPhotoUrl,
                    );
                  }
              ),
            ),
            // Align(
            //   alignment: Alignment.bottomLeft,
            //   child: Container(
            //     width: double.infinity,
            //     height: 100,
            //     decoration: BoxDecoration(
            //       color: Color(0xFFE3DADA),
            //       borderRadius: BorderRadius.only(
            //         topLeft: Radius.circular(35),
            //         topRight: Radius.circular(35),
            //       ),
            //     ),
            //
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //       crossAxisAlignment: CrossAxisAlignment.center,
            //       children: [
            //         NotActiveFromNav(
            //           onPressed: (){
            //             Navigator.pushNamed(context, "match_screen");
            //           },
            //           iconData: FontAwesomeIcons.home,
            //         ),
            //
            //         ActiveFromNav(
            //           onPressed: (){
            //
            //           },
            //           buttonText: "Likes",
            //           iconData: FontAwesomeIcons.heart,
            //         ),
            //
            //         NotActiveFromNav(
            //           onPressed: (){
            //
            //           },
            //           iconData: FontAwesomeIcons.bell,
            //         ),
            //
            //         NotActiveFromNav(
            //           onPressed: (){
            //             Navigator.pushNamed(context, "setting_screen");
            //           },
            //           iconData: FontAwesomeIcons.userCog,
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

