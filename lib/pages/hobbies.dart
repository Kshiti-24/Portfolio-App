
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:knowme/details/animate.dart';
import 'package:knowme/details/drawer.dart';
import 'package:knowme/details/launch.dart';

class HobbiesPage extends StatefulWidget {
  const HobbiesPage({Key? key}) : super(key: key);

  @override
  State<HobbiesPage> createState() => _HobbiesPageState();
}

class _HobbiesPageState extends State<HobbiesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        drawer: MyDrawer(),
        body: SafeArea(
            child: Container(
                alignment: Alignment.topCenter,
                child: Stack(children: [
                  Container(
                    child: ShaderMask(
                        shaderCallback: (rect) {
                          return const LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Colors.black, Colors.transparent])
                              .createShader(
                              Rect.fromLTRB(0, 0, rect.width, rect.height));
                        },
                        blendMode: BlendMode.dstIn,
                        child: Image.asset(
                          'assets/images/img0.jpg',
                          height: 600,
                          width: double.maxFinite,
                          fit: BoxFit.fill,
                        )),
                  ),
                  Container(
                    child: textAnimate(),
                  ),
                  const SizedBox(
                    height: 17.0,
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 5, bottom: 50),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.4),
                            child: Column(children: [
                              Container(
                                alignment: Alignment.center,
                                child: SizedBox(
                                  width: 250.0,
                                  child: DefaultTextStyle(
                                    textAlign: TextAlign.center,
                                    style:  TextStyle(
                                      color: Colors.white,
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: GoogleFonts.poppins().fontFamily,
                                    ),
                                    child: AnimatedTextKit(
                                      pause: const Duration(seconds: 6),
                                      repeatForever: true,
                                      animatedTexts: [
                                        TyperAnimatedText('           HOBBIES'),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              const Divider(
                                color: Colors.white,
                                thickness: 1.0,
                                indent: 115.0,
                                endIndent: 120.0,
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(120,0 ,0,0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children:  [
                                    Icon(
                                      FontAwesomeIcons.chess,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      '   Chess',
                                      style: TextStyle(color: Colors.white,fontFamily: GoogleFonts.poppins().fontFamily),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(120,0 ,0,0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children:  [
                                    Icon(
                                      FontAwesomeIcons.code,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      '   Programming',
                                      style: TextStyle(color: Colors.white,fontFamily: GoogleFonts.poppins().fontFamily),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(120,0 ,0,0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children:  [
                                    Icon(
                                      CupertinoIcons.sportscourt,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      '   Badminton',
                                      style: TextStyle(color: Colors.white,fontFamily: GoogleFonts.poppins().fontFamily),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(120,0 ,0,0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children:  [
                                    Icon(
                                      FontAwesomeIcons.music,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      '   Listening Music',
                                      style: TextStyle(color: Colors.white,fontFamily: GoogleFonts.poppins().fontFamily),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(120,0 ,0,0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children:  [
                                    Icon(
                                      FontAwesomeIcons.ccDiscover,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      '   Discovering new things',
                                      style: TextStyle(color: Colors.white,fontFamily: GoogleFonts.poppins().fontFamily),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 30.0,
                              ),
                              SizedBox(
                                height: 35,
                                width: 100,
                                child: TextButton(
                                    style: TextButton.styleFrom(
                                        backgroundColor: Colors.white,
                                        primary: Colors.white),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child:  Text(
                                      'Go Back',
                                      style: TextStyle(color: Colors.black,fontFamily: GoogleFonts.poppins().fontFamily),
                                    )),
                              ),
                              SizedBox(height: 10,),
                              launcher(),
                            ]),
                          ),
                        ]),
                  ),
                ]))));
  }
}