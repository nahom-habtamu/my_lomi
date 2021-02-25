import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_lomi/components/Input.dart';
import 'package:my_lomi/components/RedButton.dart';
import 'package:my_lomi/components/RedText.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}
class _LoginScreenState extends State<LoginScreen> {

  String username;
  String password;

  void onUsernameChanged (String value){
    print(" Value changed " + value);
  }

  void onPasswordChanged (String value){
    print(" Value changed " + value);
  }

  @override
  Widget build(BuildContext context) {

    var orientation = MediaQuery.of(context).orientation;
    var signInButton = RedButton(
      buttonText: 'Sign In',
      onClicked: (){
        print("Sign in Pressed");
      },
    );
    var switchToSignUpButton =  GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, "signup_screen");
      },
      child: Text(
        'Don’t have an account ? Sign up ? ',
        style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.black
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Color(0xFFB6D1BE),
      body : SingleChildScrollView(
        child: Column(
          children: [
              RedText(
                  text : "Welcome To The Login Screen ,See What Changed"
              ),
              SizedBox(
                height: 35.0,
              ),
              Input(
                hintText : 'Name : ',
                onInputChange: onUsernameChanged,
              ),
              Input(
                hintText : 'Password : ',
                onInputChange: onUsernameChanged,
              ),
              SizedBox(
                height: 35.0,
              ),

              if(orientation == Orientation.landscape)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal : 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    signInButton,
                    switchToSignUpButton,
                  ],
                ),
              ),

              if(orientation == Orientation.portrait)
                Column(
                  children: [
                    signInButton,
                    SizedBox(
                      height: 35.0,
                    ),
                   switchToSignUpButton,
                  ],
                )
          ],
        ),
      ),
    );
  }
}
