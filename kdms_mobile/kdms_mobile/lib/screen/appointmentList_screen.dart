import 'package:flutter/rendering.dart';
import 'package:kdms_mobile/constants/props.dart';
import 'package:kdms_mobile/modules/router.dart';
import 'package:octo_image/octo_image.dart';
import 'package:kdms_mobile/widget/button_shadow_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:octo_image/octo_image.dart';
import 'package:kdms_mobile/screen/main_screen.dart';
import 'package:kdms_mobile/screen/appointmentList_screen.dart';
import 'package:searchfield/searchfield.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:kdms_mobile/screen/appointment.dart';

class AppointmentListScreen extends StatefulWidget {
  @override
  _AppointmentListScreenState createState() => _AppointmentListScreenState();
}

class _AppointmentListScreenState extends State<AppointmentListScreen> {
  var rating = 3.0;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        actions: [
          Icon(
            Icons.notifications,
            color: Colors.black,
          )
        ],
        title: Image.asset(
          'assets/image/logo/logo_kdms.png',
          width: 70,
          height: 70,
        ),
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: <Color>[Colors.indigo[300], Colors.pink[100]],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                height: 90,
                width: double.infinity,
                child: Column(
                  children: [
                    Container(
                        width: 320,
                        padding: EdgeInsets.all(10.0),
                        child: TextField(
                          autocorrect: true,
                          decoration: InputDecoration(
                            hintText: 'Search',
                            prefixIcon: Icon(Icons.search),
                            hintStyle: TextStyle(color: Colors.grey),
                            filled: true,
                            fillColor: Colors.white38,
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(23.0)),
                              borderSide:
                                  BorderSide(color: Colors.white, width: 2),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0)),
                              borderSide:
                                  BorderSide(color: Colors.white38, width: 2),
                            ),
                          ),
                        ))
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      )
                    ],
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        FlatButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => (Appointment())));
                          },
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 16, top: 16),
                                child: Image.asset(
                                  "assets/image/logo/profile.png",
                                  width: 85,
                                  height: 85,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                  left: 16,
                                ),
                                child: Text(
                                  'นพ.กิตติคุณ กิจบุญดี',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'IranSansLight',
                                      fontSize: 16.0),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(bottom: 10, left: 230),
                          child: SmoothStarRating(
                            allowHalfRating: true,
                            starCount: 5,
                            rating: rating,
                            size: 25.0,
                            isReadOnly: false,
                            filledIconData: Icons.star,
                            halfFilledIconData: Icons.star_half,
                            defaultIconData: Icons.star_border,
                            color: Colors.yellow,
                            borderColor: Colors.yellow,
                            spacing: 0.0,
                            onRated: (value) {
                              print("rating value -> $value");
                              print("rating value dd -> ${value.truncate()}");
                            },
                          ),
                        ),
                        Column(
                          children: [
                           FlatButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => (Appointment())));
                          },
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 16, top: 16),
                                child: Image.asset(
                                  "assets/image/logo/profile.png",
                                  width: 85,
                                  height: 85,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                  left: 16,
                                ),
                                child: Text(
                                  'พญ.เจนจิรา สมลุขดี',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'IranSansLight',
                                      fontSize: 16.0),
                                ),
                              ),
                            ],
                          ),
                        ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.only(bottom: 10, left: 230),
                          child: SmoothStarRating(
                            allowHalfRating: true,
                            starCount: 5,
                            rating: rating,
                            size: 25.0,
                            isReadOnly: false,
                            filledIconData: Icons.star,
                            halfFilledIconData: Icons.star_half,
                            defaultIconData: Icons.star_border,
                            color: Colors.yellow,
                            borderColor: Colors.yellow,
                            spacing: 0.0,
                            onRated: (value) {
                              print("rating value -> $value");
                              print("rating value dd -> ${value.truncate()}");
                            },
                          ),
                        ),
                        Column(
                          children: [
                            FlatButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => (Appointment())));
                          },
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 16, top: 16),
                                child: Image.asset(
                                  "assets/image/logo/profile.png",
                                  width: 85,
                                  height: 85,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                  left: 16,
                                ),
                                child: Text(
                                  'นพ.อานนท์ กิจบุญ ',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'IranSansLight',
                                      fontSize: 16.0),
                                ),
                              ),
                            ],
                          ),
                        ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.only(bottom: 10, left: 230),
                          child: SmoothStarRating(
                            allowHalfRating: true,
                            starCount: 5,
                            rating: rating,
                            size: 25.0,
                            isReadOnly: false,
                            filledIconData: Icons.star,
                            halfFilledIconData: Icons.star_half,
                            defaultIconData: Icons.star_border,
                            color: Colors.yellow,
                            borderColor: Colors.yellow,
                            spacing: 0.0,
                            onRated: (value) {
                              print("rating value -> $value");
                              print("rating value dd -> ${value.truncate()}");
                            },
                          ),
                        ),
                        Column(
                          children: [
                            FlatButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => (Appointment())));
                          },
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 16, top: 16),
                                child: Image.asset(
                                  "assets/image/logo/profile.png",
                                  width: 85,
                                  height: 85,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                  left: 16,
                                ),
                                child: Text(
                                  'พญ.แอนเดรีย สมใจ',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'IranSansLight',
                                      fontSize: 16.0),
                                ),
                              ),
                            ],
                          ),
                        ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.only(bottom: 10, left: 230),
                          child: SmoothStarRating(
                            allowHalfRating: true,
                            starCount: 5,
                            rating: rating,
                            size: 25.0,
                            isReadOnly: false,
                            filledIconData: Icons.star,
                            halfFilledIconData: Icons.star_half,
                            defaultIconData: Icons.star_border,
                            color: Colors.yellow,
                            borderColor: Colors.yellow,
                            spacing: 0.0,
                            onRated: (value) {
                              print("rating value -> $value");
                              print("rating value dd -> ${value.truncate()}");
                            },
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Appointment()));
                          },
                          child: Column(
                            children: [
                              FlatButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              (Appointment())));
                                },
                                child: Row(
                                  children: [
                                    Container(
                                      padding:
                                          EdgeInsets.only(left: 16, top: 16),
                                      child: Image.asset(
                                        "assets/image/logo/profile.png",
                                        width: 85,
                                        height: 85,
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(
                                        left: 16,
                                      ),
                                      child: Text(
                                        'พญ.อัจฉรีย์ สมควร',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: 'IranSansLight',
                                            fontSize: 16.0),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(bottom: 10, left: 230),
                          child: SmoothStarRating(
                            allowHalfRating: true,
                            starCount: 5,
                            rating: rating,
                            size: 25.0,
                            isReadOnly: false,
                            filledIconData: Icons.star,
                            halfFilledIconData: Icons.star_half,
                            defaultIconData: Icons.star_border,
                            color: Colors.yellow,
                            borderColor: Colors.yellow,
                            spacing: 0.0,
                            onRated: (value) {
                              print("rating value -> $value");
                              print("rating value dd -> ${value.truncate()}");
                            },
                          ),
                        ),
                        Column(
                          children: [
                         FlatButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => (Appointment())));
                          },
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 16, top: 16),
                                child: Image.asset(
                                  "assets/image/logo/profile.png",
                                  width: 85,
                                  height: 85,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                  left: 16,
                                ),
                                child: Text(
                                  'พญ.สมควร สุขดี',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'IranSansLight',
                                      fontSize: 16.0),
                                ),
                              ),
                            ],
                          ),
                        ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.only(bottom: 10, left: 230),
                          child: SmoothStarRating(
                            allowHalfRating: true,
                            starCount: 5,
                            rating: rating,
                            size: 25.0,
                            isReadOnly: false,
                            filledIconData: Icons.star,
                            halfFilledIconData: Icons.star_half,
                            defaultIconData: Icons.star_border,
                            color: Colors.yellow,
                            borderColor: Colors.yellow,
                            spacing: 0.0,
                            onRated: (value) {
                              print("rating value -> $value");
                              print("rating value dd -> ${value.truncate()}");
                            },
                          ),
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(left: 16, top: 16),
                                  child: Image.asset(
                                    "assets/image/logo/profile.png",
                                    width: 85,
                                    height: 85,
                                  ),
                                ),
                                Container(
                                    padding: EdgeInsets.only(
                                      left: 16,
                                    ),
                                    child: Text(
                                      'พญ.เจนจิรา สมลุขดี',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'IranSansLight',
                                          fontSize: 16.0),
                                    ))
                              ],
                            ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.only(bottom: 10, left: 230),
                          child: SmoothStarRating(
                            allowHalfRating: true,
                            starCount: 5,
                            rating: rating,
                            size: 25.0,
                            isReadOnly: false,
                            filledIconData: Icons.star,
                            halfFilledIconData: Icons.star_half,
                            defaultIconData: Icons.star_border,
                            color: Colors.yellow,
                            borderColor: Colors.yellow,
                            spacing: 0.0,
                            onRated: (value) {
                              print("rating value -> $value");
                              print("rating value dd -> ${value.truncate()}");
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
