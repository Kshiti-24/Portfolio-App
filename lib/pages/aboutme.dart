import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:knowme/details/drawer.dart';
import 'package:url_launcher/url_launcher.dart';
import '../details/animate.dart';
import 'package:knowme/details/launch.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  bool check = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        drawer: MyDrawer(),
        body: Column(children: [
          Container(
            child: Stack(children: [
              ShaderMask(
                shaderCallback: (rect) {
                  return const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.black, Colors.transparent])
                      .createShader(
                          Rect.fromLTRB(0, 0, rect.width, rect.height));
                },
                blendMode: BlendMode.dstIn,
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Image.asset(
                    'assets/images/img0.jpg',
                    height: 600,
                    width: double.maxFinite,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                child: textAnimate(),
              ),
              const SizedBox(
                height: 17.0,
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.39),
                height: 345,
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: DefaultTextStyle(
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.0,
                              fontFamily: GoogleFonts.poppins().fontFamily,
                            ),
                            child: AnimatedTextKit(
                              pause: const Duration(seconds: 30),
                              repeatForever: true,
                              animatedTexts: [
                                TyperAnimatedText(
                                    'I am currently a 2nd year student at Ajay Kumar Garg '
                                    'Engineering College Ghaziabad pursuing BTech and my branch is CSE. '
                                    'I am a Application Developer and a Competitive Programmer with wholesome '
                                    'knowledge interest in Upcoming and '
                                    'Trending Software Technologies. I have good Communication Skills as '
                                    'well. I want to convert every opportunity into learning and productive. '
                                    'Despite aiming for the limits of the sky, I want to remain rooted to the '
                                    'ground. One thing I truly love is managing events I have been the Head Boy '
                                    'of my school and have also been in the organising committee of many events.',
                                    textStyle: TextStyle(
                                        color: Colors.white,
                                        fontFamily:
                                            GoogleFonts.poppins().fontFamily)),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
          SizedBox(height: 7,),
          SizedBox(
            height: 35,
            width: 100,
            child: TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.white, primary: Colors.white),
                onPressed: () {
                  Navigator.pop(context);
                  setState(() {
                    // check=true;
                  });
                },
                child: Center(
                  child: Text(
                    'Go Back',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: GoogleFonts.poppins().fontFamily),
                  ),
                )),
          ),
          SizedBox(
            height: 6.4,
          ),
          launcher(),
        ]));
  }
}
