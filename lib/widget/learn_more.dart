import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Widget createLearnMoreOption(String url, String searchAlgo) {
  return Container(
      height: 60,
      width: 150,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(width: 2, color: Colors.black)),
      child: GestureDetector(
          onTap: () async {
            // ignore: deprecated_member_use
            if (await canLaunch(url)) {
              // ignore: deprecated_member_use
              await launch(url);
            } else {
              throw 'Could not launch $url';
            }
          },
          child: Center(
            child: Text(
              "Learn More about $searchAlgo",
              style: const TextStyle(
                  fontSize: 15,
                  color: Colors.blue,
                  fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ),
          )));
}
