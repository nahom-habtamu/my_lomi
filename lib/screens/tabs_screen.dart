import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_lomi/components/CustomAppBar.dart';
import 'package:my_lomi/components/DrawerItems.dart';
import 'package:my_lomi/screens/likes_screen.dart';
import 'package:my_lomi/screens/match_screen.dart';
import 'package:my_lomi/screens/notification_screen.dart';
import 'package:my_lomi/screens/setting_screen.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedPage = 0;
  void selectPage(int index){
    setState(() {
      _selectedPage = index;
    });
  }

  List<Map<String , dynamic>> _pages = [
    { "title" : "Matches",  "page" : MatchScreen() },
    { "title" : "Likes",  "page" : LikesScreen() },
    { "title" : "Notifications",  "page" : NotificationScreen() },
    { "title" : "Settings",  "page" : SettingScreen() },
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFff6c70),
        title: Text(
          _pages[_selectedPage]['title'],
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
        ),
        toolbarHeight: 70,
      ),
      drawer: Drawer(
        child: Container(
          color: Color(0xFFff7e82),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 55, bottom: 100),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 15),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(200),
                            child: Container(
                              height: 100,
                              width: 100,
                              child: Image.network(
                                "https://images.unsplash.com/photo-1480455624313-e29b44bbfde1?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8aGFuZHNvbWUlMjBtYW58ZW58MHx8MHw%3D&ixlib=rb-1.2.1&w=1000&q=80",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),

                        Text(
                          'Nahom Habtamu',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Color(0xFF013220),
                            fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),

              DrawerItems(
                icon: Icons.speaker_group_rounded,
                title: "Contact Us",
              ),
              DrawerItems(
                icon: FontAwesomeIcons.buysellads,
                title: "Subscribe For Ephiphany",
              ),
              DrawerItems(
                icon: Icons.settings,
                title: "Settings",
              ),
              DrawerItems(
                icon: Icons.security,
                title: "Privacy Policy",
              ),
              DrawerItems(
                icon: Icons.person_pin_circle,
                title: "About the developers",
              ),
            ],
          ),
        ),
      ),
      body: _pages[_selectedPage]['page'],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        selectedLabelStyle: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold
        ),
        selectedItemColor: Colors.red[300],
        currentIndex: _selectedPage,
        onTap: (index) => selectPage(index),
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                  FontAwesomeIcons.home,
                  color: Colors.redAccent,
              ),
              label: "Home"
          ),
          BottomNavigationBarItem(
              icon: Icon(
                  FontAwesomeIcons.heart,
                  color: Colors.redAccent,
              ),
              label : 'Likes'
          ),
          BottomNavigationBarItem(
              icon: Icon(
                  FontAwesomeIcons.bell,
                  color: Colors.redAccent,
              ),
              label : 'Notifications'
          ),
          BottomNavigationBarItem(
              icon: Icon(
                  FontAwesomeIcons.userCog,
                  color: Colors.redAccent,
              ),
              label: 'Settings'
          ),
        ],
      ),
    );
  }
}
