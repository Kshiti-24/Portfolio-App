import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:knowme/details/drawer.dart';
import 'package:knowme/details/launch.dart';
import 'package:knowme/details/animate.dart';

class AchievmentPage extends StatefulWidget {
  const AchievmentPage({Key? key}) : super(key: key);

  @override
  State<AchievmentPage> createState() => _AchievmentPageState();
}

class _AchievmentPageState extends State<AchievmentPage> {
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
                    margin: const EdgeInsets.only(top: 5, bottom: 10),
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
                                        TyperAnimatedText(
                                            '      ACHIEVMENTS'),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              const Divider(
                                color: Colors.white,
                                thickness: 1.0,
                                indent: 90.0,
                                endIndent: 90.0,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(15,0 ,0,0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children:  [
                                    Icon(
                                      FontAwesomeIcons.trophy,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      '    92% in class 10th and 97% in class 12',
                                      style: TextStyle(color: Colors.white,fontFamily: GoogleFonts.poppins().fontFamily),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(15,0 ,0,0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children:  [
                                    Icon(
                                      FontAwesomeIcons.trophy,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      '    I have been the Head Boy of my school',
                                      style: TextStyle(color: Colors.white,fontFamily: GoogleFonts.poppins().fontFamily),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(15,0 ,0,0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children:  [
                                    Icon(
                                      FontAwesomeIcons.trophy,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      '    Second prize in Inter-Camous Debate \n'
                                          '                      Competition',
                                      style: TextStyle(color: Colors.white,fontFamily: GoogleFonts.poppins().fontFamily),
                                    ),

                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(15,0 ,0,0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children:  [
                                    Icon(
                                      FontAwesomeIcons.trophy,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      '    3 Star on Codechef & 5 Star on Hackerrank',
                                      style: TextStyle(color: Colors.white,fontFamily: GoogleFonts.poppins().fontFamily),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(15,0 ,0,0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children:  [
                                    Icon(
                                      FontAwesomeIcons.trophy,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      '    More than 100 problems solved on \n'
                                          '                   Codeforces',
                                      style: TextStyle(color: Colors.white,fontFamily: GoogleFonts.poppins().fontFamily),
                                    ),
                                  ],
                                ),
                              ),
                            const SizedBox(
                              height: 2,
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(15,0 ,0,0),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children:  [
                                    Icon(
                                      FontAwesomeIcons.trophy,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      '    7th place in Blockverse contest conducted \n '
                                          '                              by BRL',
                                      style: TextStyle(color: Colors.white,fontFamily: GoogleFonts.poppins().fontFamily),
                                    ),
                                  ],
                              ),
                            ),
                              Container(
                                margin: EdgeInsets.fromLTRB(15,0 ,0,0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children:  [
                                    Icon(
                                      FontAwesomeIcons.trophy,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      '    7th place in #include contest conducted \n'
                                          '                  by Programming Club',
                                      style: TextStyle(color: Colors.white,fontFamily: GoogleFonts.poppins().fontFamily),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 15.0,
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
                              SizedBox(height: 2,),
                              launcher()
                            ]),
                          ),
                        ]),
                  ),
                ]))));
  }
}