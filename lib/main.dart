import 'package:booking_app/screens/bottom_bar.dart';
import 'package:booking_app/util/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:booking_app/screens/bottom_bar.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primaryColor: primary,
      ),
      home: const Bottombar(),
    );
  }
}


