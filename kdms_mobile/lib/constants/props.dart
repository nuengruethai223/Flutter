import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:intl/intl.dart';

final navKey = GlobalKey<NavigatorState>();

var boxElevation = [
  BoxShadow(
    color: Colors.black.withOpacity(0.2),
    blurRadius: 10.0,
    spreadRadius: 0.1,
    offset: Offset(6.0, 6.0),
  ),
];
var textShadow = [
  Shadow(
    offset: Offset(10.0, 10.0),
    blurRadius: 3.0,
    color: Color.fromARGB(255, 0, 0, 0),
  ),
  Shadow(
    offset: Offset(10.0, 10.0),
    blurRadius: 8.0,
    color: Color.fromARGB(125, 0, 0, 255),
  ),
];
const spinkit = SpinKitRotatingCircle(
  color: Colors.orange,
  size: 20,
);
final formatPrice = NumberFormat("#,##0.00");
final formatNumber = NumberFormat("#,###");
final formatTime2Digit = NumberFormat("00");

final formatterDataFullWithoutTime = DateFormat("EEEE, dd MMMM yyyy");
final formatterDataTimeFull = DateFormat("EEEE, dd MMMM yyyy HH:mm:ss");
final formatterData = DateFormat("dd/MM/yyyy");
final formatterDataTime = DateFormat("dd/MM/yyyy HH:mm:ss");
final formatterDateDash = DateFormat("dd-MM-yyyy");
final formatterTime = DateFormat("HH:mm:ss");
final formatterDateServer = DateFormat("yyyy-MM-dd");
final formatterDateTimeServer = DateFormat("yyyy-MM-dd HH:mm:ss");
