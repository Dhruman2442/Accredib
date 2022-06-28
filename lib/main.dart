import 'package:accredib/theme.dart';
import 'package:accredib/ui/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:splashscreen/splashscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(
        gradientBackground: LinearGradient(colors: [colorBlack, colorBlack]),
        photoSize: 146.0,
        seconds: 3,
        navigateAfterSeconds: homePage(),
        loadingText: Text("Accredib",
            style: GoogleFonts.baloo2(
                color: colorWhite, fontSize: 50, fontWeight: FontWeight.bold)),
        loaderColor: Colors.transparent,
        backgroundColor: Colors.white,
      ),
    );
  }
}
