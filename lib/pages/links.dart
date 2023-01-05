import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:knowme/details/animate.dart';
import 'package:knowme/details/drawer.dart';
import 'package:knowme/details/launch.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkPage extends StatefulWidget {
  const LinkPage({Key? key}) : super(key: key);

  @override
  State<LinkPage> createState() => _LinkPageState();
}

class _LinkPageState extends State<LinkPage> {
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
                                                    '              Links'),
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
                                            IconButton(
                                              onPressed: () async {
                                                const url = 'https://www.facebook.com/kshitiz.agarwal.1656';
                                                final uri = Uri.parse(url);
                                                if (await canLaunchUrl(uri)) {
                                                  await launchUrl(uri);
                                                } else {
                                                  throw 'Could not launch $url';
                                                }
                                              },
                                              icon: const Icon(FontAwesomeIcons.facebook),
                                              color: Colors.white,
                                            ),
                                            SizedBox(height: 10,),
                                            IconButton(
                                              onPressed: () async {
                                                const url = 'https://www.instagram.com/kshitiz__24/';
                                                final uri = Uri.parse(url);
                                                if (await canLaunchUrl(uri)) {
                                                  await launchUrl(uri);
                                                } else {
                                                  throw 'Could not launch $url';
                                                }
                                              },
                                              icon: const Icon(FontAwesomeIcons.instagram),
                                              color: Colors.white,
                                            ),
                                            SizedBox(height: 10,),
                                            IconButton(
                                              onPressed: () async {
                                                const url = 'https://in.linkedin.com/in/kshitiz-agarwal-116512227';
                                                final uri = Uri.parse(url);
                                                if (await canLaunchUrl(uri)) {
                                                  await launchUrl(uri);
                                                } else {
                                                  throw 'Could not launch $url';
                                                }
                                              },
                                              icon: const Icon(FontAwesomeIcons.linkedin),
                                              color: Colors.white,
                                            ),
                                            SizedBox(height: 10,),
                                            IconButton(
                                              onPressed: () async {
                                                const url = 'https://github.com/Kshiti-24';
                                                final uri = Uri.parse(url);
                                                if (await canLaunchUrl(uri)) {
                                                  await launchUrl(uri);
                                                } else {
                                                  throw 'Could not launch $url';
                                                }
                                              },
                                              icon: const Icon(FontAwesomeIcons.github),
                                              color: Colors.white,
                                            ),
                                          ]),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 20.0,
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
                              ],
                            ),
                          ),
                        ]),
                  ),
                ]))));
  }
}