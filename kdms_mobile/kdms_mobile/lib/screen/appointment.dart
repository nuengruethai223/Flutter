import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:kdms_mobile/constants/props.dart';
import 'package:kdms_mobile/modules/route_observer.dart';
import 'package:kdms_mobile/style/theme.dart';
import 'package:kdms_mobile/utils/animations/transitions_helper.dart';
import 'package:kdms_mobile/widget/dialog/dialog_no_internet_connection.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:connectivity/connectivity.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:draggable_scrollbar/draggable_scrollbar.dart';

class Appointment extends StatefulWidget {
  @override
  _AppointmentState createState() => _AppointmentState();
}

class _AppointmentState extends State<Appointment> {
  ScrollController _rrectController = ScrollController();
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
              colors: <Color>[Colors.pink[200], Colors.blue[200]],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                height: 60,
                width: double.infinity,
                child: Row(
                  children: [
                    Container(
                      child: Text(
                        '   Appoinment',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'IranSansLight',
                            fontSize: 20.0),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
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
                    controller: _rrectController,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              padding: EdgeInsets.only(top: 16, left: 16),
                              child: Text(
                                '  นัดหมายแพทย์',
                                style: TextStyle(
                                    color: Colors.teal[800],
                                    fontFamily: 'IranSansLight',
                                    fontSize: 20.0),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              alignment: Alignment.topRight,
                              padding: EdgeInsets.only(
                                top: 16,
                              ),
                              // child: Icon(
                              //   FontAwesomeIcons.search,
                              //   color: Colors.black54,
                              //   size: 20,
                              // ),
                            ),
                          ],
                        ),
                        Container(
                          height: 60,
                          width: 60,
                          margin: EdgeInsets.only(
                            top: 10,
                          ),
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/image/logo/profile.png"),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'นพ.กิตติคุณ กิจบุญ',
                          style: TextStyle(
                              color: Colors.teal[900],
                              fontFamily: 'IranSansLight',
                              fontSize: 16.0),
                        ),
                        Text(
                          'ศูนย์ศัลยกรรม',
                          style: TextStyle(
                              color: Colors.teal[800],
                              fontFamily: 'IranSansLight',
                              fontSize: 13.0),
                        ),
                        SizedBox(
                          height: 16   ,
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            margin: EdgeInsets.only(
                              left: 15,
                            ),
                            child: Text(
                              'วันและเวลาที่ต้องการนัด',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.teal[800],
                                  fontFamily: 'IranSansLight',
                                  fontSize: 18.0),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            margin: EdgeInsets.only(
                              left: 15,
                            ),
                            child: Text(
                              'โปรดนัดหมายก่อน 24 ชั่วโมงก่อนเวลาที่นัด',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.teal[800],
                                  fontFamily: 'IranSansLight',
                                  fontSize: 11.0),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            margin: EdgeInsets.only(
                              left: 15,
                            ),
                            child: Text(
                              'วันนัดหมาย',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.teal[800],
                                  fontFamily: 'IranSansLight',
                                  fontSize: 15.0),
                            ),
                          ),
                        ),
                        Container(
                          height: 40,
                          margin: EdgeInsets.only(left: 20, right: 20),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'วัน/เดือน/ปี',
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            margin: EdgeInsets.only(
                              left: 15,
                            ),
                            child: Text(
                              'เวลา',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.teal[800],
                                  fontFamily: 'IranSansLight',
                                  fontSize: 15.0),
                            ),
                          ),
                        ),
                        Container(
                          height: 40,
                          margin: EdgeInsets.only(left: 20, right: 20),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'ไม่ระบุเวลา',
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            margin: EdgeInsets.only(
                              left: 15,
                            ),
                            child: Text(
                              'หมายเหตุ',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.teal[800],
                                  fontFamily: 'IranSansLight',
                                  fontSize: 15.0),
                            ),
                          ),
                        ),
                        Container(
                          height: 60,
                          margin: EdgeInsets.only(left: 20, right: 20),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        GestureDetector(
                          onTap: () {
                            print("Click event on Container");
                          },
                          child: Container(
                            padding: EdgeInsets.only(
                              top: 11,
                              left: 85,
                            ),
                            child: Text(
                              "OK",
                              style: TextStyle(color: Colors.white),
                            ),
                            height: 40,
                            width: 200,
                            decoration: BoxDecoration(
                              color: Colors.indigo[200],
                              borderRadius: BorderRadius.circular(16),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(0, 3),
                                )
                              ],
                            ),
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
