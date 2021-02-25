import 'package:flutter/material.dart';
import 'package:my_lomi/constants/textStyles.dart';

class DisplayMatch extends StatelessWidget {

  final Function onChatIconPressed;
  final String name;
  final String photoUrl;
  final String address;
  final int age;

  const DisplayMatch({ this.onChatIconPressed, this.name, this.photoUrl, this.address, this.age });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 250.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  height : 8.0
              ),

              Container(
                width: 126,
                height: 120,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: NetworkImage(photoUrl),
                      fit: BoxFit.fill
                  ),
                ),
              ),
              SizedBox(
                  height : 8.0
              ),
              Text(
                name,
                style: matchBoldTextStyle,
              ),
              SizedBox(
                height : 8.0
              ),
              Text(
                age.toString(),
                style: matchBoldTextStyle,
              ),
              SizedBox(
                height : 8.0
              ),
              Text(
                address,
                style: matchBoldTextStyle,
              )
            ],
          ),

          Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 20.0),
                width: MediaQuery.of(context).size.width * 0.45,
                height: 72,
                child: Text(
                  'You and ${this.name} liked each other now you can chat',
                  style: matchTextStyle.copyWith(
                    letterSpacing: 2.0,
                    wordSpacing: 3.0
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              SizedBox(
                height : 10.0
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(20.0,0,0,0),
                child: Icon(
                  Icons.arrow_downward_outlined,
                  color: Colors.redAccent,
                  size: 35,
                ),
              ),

              SizedBox(
                  height : 5.0
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(15.0,20,0,0),
                child: IconButton(
                    icon : Icon(
                      Icons.message,
                      color: Colors.redAccent,
                      size: 45,
                    ),
                    onPressed: onChatIconPressed
                ),
              )

            ],
          )
        ],
      ),
      decoration: BoxDecoration(
          border: Border(
          top : BorderSide.none,
          bottom : BorderSide(
          color: Colors.blueGrey,
          width: 0.5
          ),
          left : BorderSide.none,
          right : BorderSide.none,
          ),
      )
    );
  }
}
