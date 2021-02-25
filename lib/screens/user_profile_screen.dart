import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_lomi/components/CustomAppBar.dart';
import 'package:my_lomi/components/GreenButtons.dart';
import 'package:my_lomi/constants/textStyles.dart';

class UserProfileScreen extends StatefulWidget {
  @override
  _UserProfileScreenState createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  @override
  Widget build(BuildContext context) {

    var screenSize = MediaQuery.of(context).size;
    var orientation = MediaQuery.of(context).orientation;
    var showProfilePicture = Container(
        height: orientation == Orientation.landscape ? screenSize.height * 0.5 : screenSize.height * 0.4,
        width: orientation == Orientation.landscape ? screenSize.width * 0.5 : double.infinity,
        child: Image(
          image: NetworkImage(
              'https://media.istockphoto.com/photos/smiling-businesswoman-looking-at-camera-webcam-make-conference-call-picture-id1129638608?k=6&m=1129638608&s=612x612&w=0&h=8OhKQCq_elLsW_PAWA4n8pzQy3mlkf5a_ztp2Nbv8Y8='
          ),
          fit: BoxFit.cover,
        )
    );
    var showName =  Padding(
      padding: const EdgeInsets.only(left : 14.0),
      child: Text(
        'Nahom Habtamu',
        style: matchBoldTextStyle,
      ),
    );
    var showUserName = Padding(
      padding: const EdgeInsets.only(left : 14.0),
      child: Text(
        '@myusername',
        style: matchTextStyle,
      ),
    );
    var showBiography =  Container(
      width: 300,
      height: 60,
      child: Padding(
        padding: const EdgeInsets.only(left : 14.0),
        child: Text(
          'some weird biography or a little text that describes you',
          style: matchBoldTextStyle,
          textAlign: TextAlign.start,
        ),
      ),
    );
    var showSpaceTwenty = SizedBox( height: 20.0,);

    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          leading: true,
          title: "",
          onBackPressed: (){},
          length : 70.0
        ),

        body: Column(
          children: [
            if(orientation == Orientation.landscape)
              Row(
                children: [
                  showProfilePicture,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      showSpaceTwenty,
                      showName,
                      showSpaceTwenty,
                      showUserName,
                      showSpaceTwenty,
                      showBiography
                    ],
                  )
              ],
            ),
            if(orientation == Orientation.portrait)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  showProfilePicture,
                  showSpaceTwenty,
                  showName,
                  showSpaceTwenty,
                  showUserName,
                  showSpaceTwenty,
                  showBiography
                ],
              ),

            showSpaceTwenty,
            Center(
              child: GreenButton(
                buttonText: "Edit Profile",
                onClicked: (){
                  Navigator.pushNamed(context, 'edit_profile_screen');
                },
              ),
            )
          ],
        ),

      ),
    );
  }
}
