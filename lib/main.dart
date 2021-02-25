import 'package:flutter/material.dart';
import 'package:my_lomi/screens/about_screen.dart';
import 'package:my_lomi/screens/edit_profile_screen.dart';
import 'package:my_lomi/screens/profile_screen.dart';
import 'package:my_lomi/screens/likes_screen.dart';
import 'package:my_lomi/screens/login_screen.dart';
import 'package:my_lomi/screens/main_screen.dart';
import 'package:my_lomi/screens/match_screen.dart';
import 'package:my_lomi/screens/setting_screen.dart';
import 'package:my_lomi/screens/signup_screen.dart';
import 'package:my_lomi/screens/tabs_screen.dart';
import 'package:my_lomi/screens/user_profile_screen.dart';

void main() {
  runApp(MyLomi());
}

class MyLomi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/' : (context) => TabsScreen(),
        'welcome_screen' : (context) => MainScreen(),
        'login_screen' : (context) => LoginScreen(),
        'signup_screen' : (context) => SignUpScreen(),
        'match_screen' : (context) => MatchScreen(),
        'profile_screen' : (context) => ProfileScreen(),
        'setting_screen' : (context) => SettingScreen(),
        'likes_screen' : (context) => LikesScreen(),
        'about_screen' : (context) => AboutScreen(),
        'user_profile_screen' : (context) => UserProfileScreen(),
        'edit_profile_screen' : (context) => EditProfileScreen(),
      },
    );
  }
}

