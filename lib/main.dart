import 'package:calculator/utils/brand_colors.dart';

import 'package:calculator/widgets/custom_button_tray.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Calculator",
      theme: ThemeData(
        primaryColor: BrandColors.purple,
      ),
      home: Scaffold(
        backgroundColor: BrandColors.black,
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: BrandColors.purple,
          title: Text(
            "Calculator",
            style: GoogleFonts.roboto(
              textStyle: TextStyle(
                color: BrandColors.white,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        body: CustomButtonTray(),
      ),
    );
  }
}
