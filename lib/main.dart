import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:knowme/pages/experience.dart';
import 'package:knowme/pages/aboutme.dart';
import 'package:knowme/pages/achiv.dart';
import 'package:knowme/pages/education.dart';
import 'package:knowme/pages/hobbies.dart';
import 'package:knowme/pages/splash.dart';

import 'pages/homepage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [
    SystemUiOverlay.bottom, //This line is used for showing the bottom bar
  ]);
  runApp(MaterialApp(
    initialRoute: 'splash',
    routes: {
      'splash': (context) => const SplashView(),
      'about': ((context) => const AboutMe()),
      'home': (context) => const HomePage(),
      'achiv': (context) => const AchievmentPage(),
      'experience': (context) => const ExperiencePage(),
      'education': (context) => const EducationView(),
      'hobbies': (context) => const HobbiesPage()

    },
    debugShowCheckedModeBanner: false,
  ));
}