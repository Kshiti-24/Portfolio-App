import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

launcher (){
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      IconButton(
        onPressed: () async {
          const url = 'https://www.facebook.com/kshitiz.agarwal.1656';
          if (await canLaunch(url)) launch(url);
        },
        icon: const Icon(FontAwesomeIcons.facebook),
        color: Colors.white,
      ),
      IconButton(
        onPressed: () async {
          const url = 'https://www.instagram.com/kshitiz__24/';
          final uri=Uri.parse(url);
          if (await canLaunchUrl(uri)) launchUrl(uri);
        },
        icon: const Icon(FontAwesomeIcons.instagram),
        color: Colors.white,
      ),
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
      IconButton(
        onPressed: () async {
          const url = 'https://github.com/Kshiti-24';
          if (await canLaunch(url)) launch(url);
        },
        icon: const Icon(FontAwesomeIcons.github),
        color: Colors.white,
      ),
    ],
  );
}