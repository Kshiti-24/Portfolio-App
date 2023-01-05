import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:knowme/pages/achiv.dart';
import 'package:knowme/pages/experience.dart';
import 'package:knowme/pages/hobbies.dart';
import 'package:knowme/details/skills.dart';
import 'package:knowme/pages/aboutme.dart';
import 'package:knowme/pages/project.dart';
import 'package:knowme/pages/skill.dart';
import 'package:sliding_sheet/sliding_sheet.dart';
import 'education.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../details/animate.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter/cupertino.dart';
import 'package:knowme/details/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      drawer: MyDrawer(),
      body: SafeArea(
          child: SlidingSheet(
              elevation: 8,
              cornerRadius: 30,
              snapSpec: const SnapSpec(
                // Enable snapping. This is true by default.
                snap: true,
                // Set custom snapping points.
                snappings: [0.38, 0.7, 1.0],
                // Define to what the snappings relate to. In this case,
                // the total available space that the sheet can expand to.
                positioning: SnapPositioning.relativeToAvailableSpace,
              ),
              // The body widget will be displayed under the SlidingSheet
              // and a parallax effect can be applied to it.
              body: Container(
                alignment: Alignment.topCenter,
                child: Stack(
                  children: [
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
                      child: CarouselSlider.builder(
                        itemCount: 5,
                        itemBuilder: ((context, index, realIndex) =>
                            Image.asset(
                              'assets/images/img$index.jpg',
                              height: 400,
                              fit: BoxFit.contain,
                            )),
                        options: CarouselOptions(
                          viewportFraction: 0.9,
                          aspectRatio: 1.0,
                          autoPlay: true,
                          autoPlayInterval: const Duration(seconds: 2),
                          height: 500,
                          autoPlayAnimationDuration:
                              const Duration(milliseconds: 400),
                        ),
                      ),
                    )),
                    Container(
                      child: textAnimate(),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.45),
                      child: Column(
                        children: [
                          //  Text(
                          //   'KSHITIZ AGARWAL',
                          //   style: TextStyle(
                          //       fontSize: 35,
                          //       color: Colors.white,
                          //       fontWeight: FontWeight.bold,
                          //     fontFamily: GoogleFonts.poppins().fontFamily
                          //   ),
                          // ),
                          SizedBox(
                            child: Center(
                              child: AnimatedTextKit(
                                animatedTexts: [
                                  ColorizeAnimatedText(
                                    'Kshitiz Agarwal',
                                    textStyle: colorizeTextStyle,
                                    colors: colorizeColors,
                                  ),
                                ],
                                isRepeatingAnimation: true,
                                repeatForever: true,
                              ),
                            ),
                          ),
                          typeWriteText()
                        ],
                      ),
                    )
                  ],
                ),
              ),
              builder: (context, state) {
                // ignore: sized_box_for_whitespace
                return Container(
                    height: 500,
                    child: Container(
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        const SizedBox(
                          height: 25.0,
                        ),
                        Container(
                          child: Center(
                            child: Text("Know Me",style: TextStyle(
                              fontFamily: GoogleFonts.poppins().fontFamily,
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                            ),),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: (() => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const AboutMe()))),
                              child: Container(
                                  margin: const EdgeInsets.all(5.0),
                                  height: 117,
                                  width: 106,
                                  child: Card(
                                    elevation: 20,
                                    color: Colors.indigo,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18),
                                    ),
                                    child: Container(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children:  [
                                          Container(
                                            height: 50,
                                            width: 50,
                                            child: Lottie.asset('assets/images/gr.json'),
                                          ),
                                          SizedBox(
                                            height: 9.0,
                                          ),
                                          Text(
                                            'About Me',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 17,
                                              fontFamily: GoogleFonts.poppins().fontFamily
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  )),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: (() => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const EducationView()))),
                              child: Container(
                                  margin: const EdgeInsets.all(5.0),
                                  height: 117,
                                  width: 106,
                                  child: Card(
                                    elevation: 20,
                                    color: Colors.black,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18),
                                    ),
                                    child: Container(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children:  [
                                          Icon(
                                            FontAwesomeIcons.graduationCap,
                                            color: Colors.white,
                                            size: 23,
                                          ),
                                          SizedBox(
                                            height: 9.0,
                                          ),
                                          Text(
                                            'Education',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 17,fontFamily: GoogleFonts.poppins().fontFamily),
                                          )
                                        ],
                                      ),
                                    ),
                                  )),
                            ),
                            InkWell(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const AchievmentPage())),
                              child: Container(
                                  margin: const EdgeInsets.all(5.0),
                                  height: 117,
                                  width: 120,
                                  child: Card(
                                    elevation: 18,
                                    color: Colors.black,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18),
                                    ),
                                    child: Container(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children:  [
                                          Icon(
                                            FontAwesomeIcons.trophy,
                                            color: Colors.white,
                                            size: 23,
                                          ),
                                          SizedBox(
                                            height: 9.0,
                                          ),
                                          Text(
                                            'Achievmenets',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15,fontFamily: GoogleFonts.poppins().fontFamily),
                                          )
                                        ],
                                      ),
                                    ),
                                  )),
                            ),
                            InkWell(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const HobbiesPage())),
                              child: Container(
                                  margin: const EdgeInsets.all(5.0),
                                  height: 117,
                                  width: 104,
                                  child: Card(
                                    elevation: 14,
                                    color: Colors.black,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18),
                                    ),
                                    child: Container(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children:  [
                                          Icon(
                                            FontAwesomeIcons.book,
                                            color: Colors.white,
                                            size: 25,
                                          ),
                                          SizedBox(
                                            height: 9.0,
                                          ),
                                          Text(
                                            'Hobbies',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15,fontFamily: GoogleFonts.poppins().fontFamily),
                                          )
                                        ],
                                      ),
                                    ),
                                  )),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const ProjectPage())),
                              child: Container(
                                  margin: const EdgeInsets.all(5.0),
                                  height: 117,
                                  width: 106,
                                  child: Card(
                                    elevation: 14,
                                    color: Colors.black,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18),
                                    ),
                                    child: Container(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children:  [
                                          Icon(
                                            FontAwesomeIcons.laptopCode,
                                            color: Colors.white,
                                            size: 25,
                                          ),
                                          SizedBox(
                                            height: 9.0,
                                          ),
                                          Text(
                                            '  Projects',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15,fontFamily: GoogleFonts.poppins().fontFamily),
                                          )
                                        ],
                                      ),
                                    ),
                                  )),
                            ),
                            InkWell(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const ExperiencePage())),
                              child: Container(
                                  margin: const EdgeInsets.all(5.0),
                                  height: 117,
                                  width: 120,
                                  child: Card(
                                    elevation: 14,
                                    color: Colors.black,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18),
                                    ),
                                    child: Container(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children:  [
                                          Icon(
                                            FontAwesomeIcons.blackTie,
                                            color: Colors.white,
                                            size: 25,
                                          ),
                                          SizedBox(
                                            height: 9.0,
                                          ),
                                          Text(
                                            'Experience',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15,
                                              fontFamily: GoogleFonts.poppins().fontFamily
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  )),
                            ),
                            InkWell(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const SkiilPage())),
                              child: Container(
                                  margin: const EdgeInsets.all(5.0),
                                  height: 117,
                                  width: 104,
                                  child: Card(
                                    elevation: 14,
                                    color: Colors.black,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18),
                                    ),
                                    child: Container(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children:  [
                                          Icon(
                                            FontAwesomeIcons.userGraduate,
                                            color: Colors.white,
                                            size: 25,
                                          ),
                                          SizedBox(
                                            height: 9.0,
                                          ),
                                          Text(
                                            'Skills',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15,
                                              fontFamily: GoogleFonts.poppins().fontFamily
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  )),
                            )
                          ],
                        ),
                      ]),
                    ));
              })),
    );
  }

  List<MaterialColor> colorizeColors = [
    Colors.indigo,
    Colors.teal,
    Colors.deepPurple,
    Colors.blue,
  ];

  var colorizeTextStyle = TextStyle(
    fontSize: 40.0,
    fontFamily: GoogleFonts.poppins().fontFamily,
  );
}

headings(String headings, double Thickness, indent, endint) {
  return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
    Text(
      headings,
      style:  TextStyle(fontSize: 20, fontWeight: FontWeight.bold,fontFamily: GoogleFonts.poppins().fontFamily),
    ),
    Divider(
      thickness: Thickness,
      color: Colors.black,
      indent: indent,
      endIndent: endint,
    )
  ]);
}
