import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'package:genxq/pages/loginpage.dart';
import 'package:genxq/pages/accountpage.dart';
import 'package:genxq/pages/cartpage.dart';
import 'package:genxq/pages/homepage.dart';
import 'package:genxq/pages/shoppage.dart';

Future<void> main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }

}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {

    void handleTimeout() {
      FlutterNativeSplash.remove();
    }

    Timer scheduleTimeout([int seconds = 1]) {
      return Timer(Duration(seconds: seconds), handleTimeout);
    }

    scheduleTimeout(1);

    return MaterialApp(
    home: HomePage(),
    routes: {
  '/loginpage': (context) => LoginPage(),
  '/accountpage': (context) => AccountPage(),
  '/cartpage': (context) => CartPage(),
  '/homepage': (context) => HomePage(),
  '/shoppage': (context) => ShopPage(),
  },
    );

  }
}