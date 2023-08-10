import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:snowman/vehicle_listing/vehicle_card.dart';
import 'package:snowman/vehicle_listing/vehicle_listing_screen.dart';
import 'package:snowman/visitor_listing/visitor_listing.dart';

import 'home_screen/drawer_screen.dart';
import 'home_screen/home_screen.dart';
import 'home_screen/splash_screen.dart';
import 'otp_screen/otp_ui.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  const SplashScreen(),
    );
  }
}
