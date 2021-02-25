import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_lomi/components/Input.dart';
import 'package:my_lomi/components/RedButton.dart';
import 'package:my_lomi/components/RedText.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}
class _SignUpScreenState extends State<SignUpScreen> {

  String name = "";
  String email = "";
  String password = "";

  void onUsernameChanged (String value){
    setState(() {
      name = value;
    });
  }

  void onPasswordChanged (String value){
    setState(() {
      password = value;
    });
  }

  void onEmailChanged(String value) {
    setState(() {
      email = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;
    var signUpButton = RedButton(
      buttonText: 'Sign Up',
      onClicked: (){
        print("I am pressed");
      },
    );

    var switchToSignInButton =  GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, "login_screen");
      },
      child: Text(
        'Already Have An Account ? Sign In ',
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
                text : "Eager To Join ? Sign up here"
            ),
            SizedBox(
              height: orientation == Orientation.landscape ? 20 : 35.0,
            ),
            Input(
              hintText : 'Email : ',
              onInputChange: onEmailChanged,
            ),
            SizedBox(
              height: orientation == Orientation.landscape ? 10 : 20.0 ,
            ),

            Input(
              hintText : 'Name : ',
              onInputChange: onUsernameChanged,
            ),
            SizedBox(
              height: orientation == Orientation.landscape ? 10 : 20.0 ,
            ),

            Input(
              hintText : 'Password : ',
              onInputChange: onUsernameChanged,
            ),
            SizedBox(
              height: orientation == Orientation.landscape ? 20 : 35.0 ,
            ),

            if(orientation == Orientation.landscape)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal : 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    signUpButton,
                    switchToSignInButton,
                  ],
                ),
              ),

            if(orientation == Orientation.portrait)
              Column(
                children: [
                  signUpButton,
                  SizedBox(
                    height: 35.0,
                  ),
                  switchToSignInButton,
                ],
              )
          ],
        ),
      ),
    );
  }

}
