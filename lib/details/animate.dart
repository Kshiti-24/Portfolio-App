import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

typeWriteText() {
  return Container(
    alignment: Alignment.center,
    child: SizedBox(
      width: 250.0,
      child: DefaultTextStyle(
        style:  TextStyle(
          color: Colors.white,
          fontSize: 20.0,
          fontFamily: GoogleFonts.poppins().fontFamily,
        ),
        child: AnimatedTextKit(
          pause: const Duration(seconds: 2),
          repeatForever: true,
          animatedTexts: [
            TyperAnimatedText('  Application Developer',textStyle: TextStyle(
              color: Colors.white
            )),
            TyperAnimatedText('  Competitive Programmer',textStyle: TextStyle(
              fontSize: 18
            )),
          ],
        ),
      ),
    ),
  );
}

textAnimate() {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        const SizedBox(width: 27.0, height: 100.0),
        DefaultTextStyle(
          style:  TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            fontFamily: GoogleFonts.poppins().fontFamily,
          ),
          child: AnimatedTextKit(
            repeatForever: true,
            animatedTexts: [
              RotateAnimatedText('CONFIDENT'),
              RotateAnimatedText('OPTIMISTIC'),
              RotateAnimatedText('CREATIVE'),
              RotateAnimatedText('TEAM WORK'),
              RotateAnimatedText('PROBLEM SOLVING'),
            ],
            onTap: () {
              print("Tap Event");
            },
          ),
        ),
      ],
    ),
  );
}