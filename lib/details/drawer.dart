// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:knowme/pages/contact.dart';
import 'package:knowme/pages/family.dart';
import 'package:knowme/pages/homepage.dart';
import 'package:knowme/pages/links.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
          color: Colors.black,
          child: ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  padding: EdgeInsets.zero,
                  child: UserAccountsDrawerHeader(
                    margin: EdgeInsets.zero,
                    accountName: Text(
                      "Kshitiz Agarwal ",
                      style: TextStyle(color: Colors.white,fontFamily: GoogleFonts.poppins().fontFamily,),
                    ),
                    accountEmail: Text(
                      "kshitizagarwal9292@gmail.com",
                      style: TextStyle(color: Colors.white,fontFamily: GoogleFonts.poppins().fontFamily,),
                    ),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/img13.jpg'),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.black,
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    CupertinoIcons.home,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Home",
                    textScaleFactor: 1.2,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: GoogleFonts.poppins().fontFamily,
                    ),
                  ),
                  onTap: () {
                    // Navigator.pushNamed(context, MyRoutes.homeRoute);
                    // Navigator.pushReplacement(context,  ));
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
                  },
                ),
                ListTile(
                  leading: Icon(
                    FontAwesomeIcons.peopleGroup,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Family",
                    textScaleFactor: 1.2,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: GoogleFonts.poppins().fontFamily,
                    ),
                  ),
                  onTap: () {
                    // Navigator.pushNamed(context, MyRoutes.homeRoute);
                    // Navigator.pushReplacementNamed(context, 'home');
                    Navigator.push(context, MaterialPageRoute(builder: (context) => FamilyPage()));
                  },
                ),
                ListTile(
                  leading: Icon(
                    CupertinoIcons.phone,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Contact",
                    textScaleFactor: 1.2,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: GoogleFonts.poppins().fontFamily,
                    ),
                  ),
                  onTap: () {
                    // Navigator.pushNamed(context, MyRoutes.homeRoute);
                    // Navigator.pushReplacementNamed(context, 'home');
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ContactPage()));
                  },
                ),
                ListTile(
                  leading: Icon(
                    CupertinoIcons.link,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Useful Links",
                    textScaleFactor: 1.2,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: GoogleFonts.poppins().fontFamily,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LinkPage()));
                  },
                ),

              ])),

    );
  }
}


class MyRoutes{
  static String homeRoute= "/home";
}