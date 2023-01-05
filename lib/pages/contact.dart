import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:knowme/details/animate.dart';
import 'package:knowme/details/drawer.dart';
import 'package:knowme/details/launch.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
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
                    margin: const EdgeInsets.only(top: 2, bottom: 50),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            child: Column(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  margin: EdgeInsets.only(
                                      top: MediaQuery.of(context).size.height *
                                          0.4),
                                  child: Column(
                                    children: [
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
                                                    '              Contact'),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Divider(
                                        color: Colors.white,
                                        thickness: 1.0,
                                        indent: 120.0,
                                        endIndent: 120.0,
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Column(
                                          children:[
                                            Container(
                                              margin: EdgeInsets.fromLTRB(70,0 ,0,0),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children:  [
                                                  Icon(
                                                    Icons.email,
                                                    color: Colors.white,
                                                  ),
                                                  Text(
                                                    '   kshitizagarwal9292@gmail.com',
                                                    style:
                                                    TextStyle(color: Colors.white,fontFamily: GoogleFonts.poppins().fontFamily,),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(height: 5,),
                                            Container(
                                              margin: EdgeInsets.fromLTRB(70,0 ,0,0),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children:  [
                                                  Icon(
                                                    FontAwesomeIcons.phone,
                                                    color: Colors.white,
                                                  ),
                                                  Text(
                                                    '   9793680227',
                                                    style:
                                                    TextStyle(color: Colors.white,fontFamily: GoogleFonts.poppins().fontFamily,),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(height: 5,),
                                            Container(
                                              margin: EdgeInsets.fromLTRB(70,0 ,0,0),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children:  [
                                                  Icon(
                                                    FontAwesomeIcons.city,
                                                    color: Colors.white,
                                                  ),
                                                  Text(
                                                    '   Ghaziabad,Uttar Pradesh',
                                                    style:
                                                    TextStyle(color: Colors.white,fontFamily: GoogleFonts.poppins().fontFamily,),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(height: 2,),
                                          ]),
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
                                        style: TextStyle(color: Colors.black,fontFamily: GoogleFonts.poppins().fontFamily,),
                                      )),
                                ),
                                SizedBox(height: 10,),
                                launcher()
                              ],
                            ),
                          ),
                        ]),
                  ),
                ]))));
  }
}