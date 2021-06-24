import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kdms_mobile/constants/props.dart';
import 'package:kdms_mobile/modules/router.dart';
import 'package:kdms_mobile/style/color.dart';
import 'package:kdms_mobile/widget/button_shadow_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:octo_image/octo_image.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:flutter_credit_card/credit_card_form.dart';
import 'package:flutter_credit_card/credit_card_model.dart';
import 'package:gradients/gradients.dart';
import 'package:kdms_mobile/screen/appointment.dart';
import 'package:kdms_mobile/screen/appointmentList_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool isCvvFocused = false;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            AppBar(
              backgroundColor: Color(0xFFFFFFFF),
              toolbarHeight: 55,
              elevation: 5.0,
              leading: Icon(
                Icons.menu,
                size: 32.5,
                color: Colors.indigo[900],
              ),
              actions: <Widget>[
                Padding(
                  padding: EdgeInsets.only(right: 115),
                  child: Image.asset(
                    'assets/image/logo/logo_kdms.png',
                    width: 70,
                    height: 70,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: Icon(
                    Icons.notifications,
                    size: 30,
                    color: Colors.indigo[900],
                  ),
                ),
              ],
              iconTheme: IconThemeData(color: Colors.black),
            ),
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 155,
                  color: Colors.indigo[300],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.0, left: 16),
                  child: SizedBox(
                    width: 60,
                    height: 60,
                    child: CircleAvatar(
                      backgroundImage:
                          AssetImage("assets/image/logo/profile.png"),
                    ),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(right: 16, left: 80, top: 25),
                      child: Text(
                        'Nuengruethai Wonghapim',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'IranSansLight',
                            fontSize: 19.0),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 16, left: 20, top: 25),
                      child: Icon(
                        FontAwesomeIcons.userEdit,
                        color: Colors.white,
                        size: 18,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
                Container(
                  height: 200,
                  width: double.infinity,
                  margin: EdgeInsets.only(right: 16, left: 16, top: 80),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      )
                    ],
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment(0.9, 0.0),
                      colors: [
                        Colors.indigo[200],
                        Colors.pink[100],
                      ],
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          padding: EdgeInsets.only(top: 125, right: 16),
                          child: Text(
                            'HN00000101',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(0xFF00918C), fontSize: 16.0),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          padding: EdgeInsets.only(right: 16),
                          child: Text(
                            'Nuengruethai Wonghapim',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black54,
                                fontFamily: 'IranSansLight',
                                fontSize: 17.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            Container(
              height: 20,
              width: double.infinity,
              padding: EdgeInsets.only(left: 16, right: 16),
              child: Row(
                children: <Widget>[
                  Text(
                    'Medical Exam Result',
                    style: TextStyle(color: Colors.black54, fontSize: 16.0),
                  ),
                  IconButton(
                    padding: EdgeInsets.only(left: 175),
                    icon: Icon(
                      FontAwesomeIcons.angleRight,
                      color: Colors.indigo[900],
                      size: 25,
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AppointmentListScreen()));
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
                height: 85,
                width: double.infinity,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(right: 16, left: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Lastest',
                        textAlign: TextAlign.center,
                        style:
                            TextStyle(color: Color(0xFF00918C), fontSize: 13.0),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        width: 300,
                        child: Text(
                          'พบค่า CA 19-9 สูงกว่าปกติควรตรวจซ้ำและปรึกษาแพทย์',
                          textAlign: TextAlign.center,
                          style:
                              TextStyle(color: Colors.red[600], fontSize: 12),
                        ),
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    )
                  ],
                  color: Color(0xFFFFFFFF),
                )),
            SizedBox(height: 40),
            Container(
              height: 20,
              width: double.infinity,
              padding: EdgeInsets.only(left: 16, right: 16),
              child: Row(
                children: <Widget>[
                  Text(
                    'Next Appointment',
                    style: TextStyle(color: Colors.black54, fontSize: 16.0),
                  ),
                  IconButton(
                    padding: EdgeInsets.only(left: 192),
                    icon: Icon(
                      FontAwesomeIcons.angleRight,
                      color: Colors.indigo[900],
                      size: 25,
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AppointmentListScreen()));
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
                height: 115,
                width: double.infinity,
                padding: EdgeInsets.all(16),
                margin: EdgeInsets.only(right: 16, left: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        width: double.infinity,
                        child: Text(
                          'ตรวจระดับสารชีวะเคมีในเลือด (Blood Chemistry)',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color(0xFF00918C), fontSize: 14.0),
                        ),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.mapMarkerAlt,
                          color: Color(0xFF00918C),
                          size: 13,
                        ),
                        Text(
                          '  ศูนย์ตรวจสุขภาพโรงพยาบาลเอเชีย',
                          style: TextStyle(color: Color(0xFF00918C)),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.clock,
                          color: Color(0xFF00918C),
                          size: 13,
                        ),
                        Text(
                          '  11 มิถุนายน 2021 11.30-12.30',
                          style: TextStyle(color: Colors.red),
                        ),
                      ],
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    )
                  ],
                  color: Color(0xFFFFFFFF),
                )),
          ],
        ),
      ),
    );
  }
}
