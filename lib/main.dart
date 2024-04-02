import 'package:flutter/material.dart';

// *** Pages ***

// HomePage
import 'package:foodbox/Pages/home_page.dart';

void main() {
  runApp(MaterialApp(
      theme: ThemeData(
        fontFamily: 'IranSansDN',
        primaryColor: Colors.amber,
      ),
      debugShowCheckedModeBanner: false,
      home: const Directionality(
          textDirection: TextDirection.rtl, child: HomePage())));
}
