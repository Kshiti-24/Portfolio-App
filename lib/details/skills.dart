
import 'package:flutter/material.dart';

skills(String title, IconData icon, Color iconcolor, Color cardcolor,
    Color textcolor) {
  return Column(children: [
    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Container(
          margin: const EdgeInsets.all(5.0),
          height: 117,
          width: 115,
          child: Card(
            shadowColor: Colors.black,
            elevation: 20,
            color: cardcolor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    icon,
                    color: iconcolor,
                    size: 23,
                  ),
                  const SizedBox(
                    height: 9.0,
                  ),
                  Text(
                    title,
                    style: TextStyle(color: textcolor, fontSize: 15),
                  )
                ],
              ),
            ),
          ))
    ]),
  ]);
}