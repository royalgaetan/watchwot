import 'package:flutter/material.dart';
import 'package:watches_shop_app/screens/introductionpage.dart';

void main() {
  runApp(
    const WatchShopApp(),
  );
}

class WatchShopApp extends StatefulWidget {
  const WatchShopApp({Key? key}) : super(key: key);

  @override
  State<WatchShopApp> createState() => _WatchShopAppState();
}

class _WatchShopAppState extends State<WatchShopApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: const IntroductionPage(),
    );
  }
}
