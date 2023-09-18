import 'dart:async';

import 'package:flutter/material.dart';

import 'package:genxq/pages/loginpage.dart';
import 'package:genxq/pages/accountpage.dart';
import 'package:genxq/pages/cartpage.dart';
import 'package:genxq/pages/homepage.dart';
import 'package:genxq/pages/shoppage.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

Future<void> main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {

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