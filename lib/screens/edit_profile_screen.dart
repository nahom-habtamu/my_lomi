import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_lomi/components/CustomAppBar.dart';
import 'package:my_lomi/components/GreenButtons.dart';
import 'package:my_lomi/components/LabelWithValue.dart';

class EditProfileScreen extends StatefulWidget {
  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;

    var showProfilePicture =  Container(
      width: 136,
      height: 130,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
            image: NetworkImage('https://media.istockphoto.com/photos/portrait-of-smiling-handsome-man-in-blue-tshirt-standing-with-crossed-picture-id1045886560?k=6&m=1045886560&s=612x612&w=0&h=hXrxai1QKrfdqWdORI4TZ-M0ceCVakt4o6532vHaS3I='),
            fit: BoxFit.fill
        ),
      ),
      child: IconButton(
        icon: Icon(
          Icons.add_a_photo_outlined,
          size: 50,
          color: Color(0x44000000),
        ),
        onPressed: (){
          // change profile picture :)
        },
      ),
    );
    var showGreenButton = GreenButton(
      buttonText : 'Save Changes',
      onClicked: (){},
    );
    var showNameInfo = LabelWithValue(
      label: "Name",
      value: "Nahom Habtamu",
      onEditProfileChanged: (value){

      },
    );
    var showUsernameInfo = LabelWithValue(
      label: "Username",
      value: "@nahiboy",
      onEditProfileChanged: (value){

      },
    );
    var showBirthDateInfo = LabelWithValue(
      label: "Birth Date",
      value: "April 23, 1999G.C",
      onEditProfileChanged: (value){

      },
    );
    var showLocationInfo = LabelWithValue(
      label: "Location",
      value: "Addis Ababa, Ethiopia",
      onEditProfileChanged: (value){

      },
    );
    var showBioInfo = LabelWithValue(
      label: "Bio",
      value: "That some weird biography with some limit text as ",
      isLong: true,
      onEditProfileChanged: (value){

      },
    );

    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          title: 'Edit Profile',
          leading: true,
          onBackPressed: (){}
        ),

        body: SingleChildScrollView(
          child: Column(
            children: [
              if(orientation == Orientation.landscape)
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        showProfilePicture,
                        showGreenButton,
                      ],
                    ),
                    Row(
                      children: [
                        showNameInfo,
                        showUsernameInfo,
                        showLocationInfo,
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      children: [
                        showBioInfo,
                        showBirthDateInfo,
                      ],
                    ),
                  ],
                ),
              if(orientation == Orientation.portrait)
                Column(
                  children: [
                    showProfilePicture,
                    showNameInfo,
                    showUsernameInfo,
                    showBirthDateInfo,
                    showLocationInfo,
                    showBioInfo,
                    SizedBox(
                      height: 15.0,
                    ),
                    showGreenButton
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
