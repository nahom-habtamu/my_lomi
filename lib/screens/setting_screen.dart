import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_lomi/components/ActiveFromNav.dart';
import 'package:my_lomi/components/CustomAppBar.dart';
import 'package:my_lomi/components/NotActiveFromNav.dart';
import 'package:my_lomi/components/SettingItem.dart';

class SettingScreen extends StatefulWidget {
  @override
  _SettingScreenState createState() => _SettingScreenState();
}

var settings = [ "Subscribe for EverEphiphany", "Account Information", "Privacy Policy" , "User Agreement",
                "About The Developers", "Contact Us", "Sign Out"
];

var items = [
  BottomNavigationBarItem(
    icon: Icon(
      FontAwesomeIcons.home,
      size: 35,
      color : Colors.red
    ),
    label: "Home"
  ),
  BottomNavigationBarItem(
    icon: Icon(
      Icons.favorite,
      size: 35,
      color : Colors.red
    ),
    label: "Likes"
  ),
  BottomNavigationBarItem(
    icon: Icon(
      FontAwesomeIcons.bell,
      size: 35,
      color : Colors.red
    ),
    label: "Notification"
  ),
  BottomNavigationBarItem(
    icon: Icon(
      FontAwesomeIcons.userCog,
      size: 35,
      color : Colors.red
    ),
    label: "Settings"
  ),

];

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
              height: orientation == Orientation.portrait ?
                    MediaQuery.of(context).size.height * 0.7 :
                    MediaQuery.of(context).size.height * 0.595 ,
              child: ListView.builder(
                itemCount: 7,
                itemBuilder: (context, index){
                  return Column(
                    children: [
                      SettingItem(
                        itemText: settings[index],
                        onPressed: (){},
                      ),
                      Divider(
                        color: Colors.green,
                      )
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
