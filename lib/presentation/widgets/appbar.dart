import 'package:cinemagate/utilities/utilities.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("CinemaGate",
          style: GoogleFonts.princessSofia(
              fontSize: 35, fontWeight: FontWeight.bold)),
      actions: [
        IconButton(
            onPressed: () {
              // navigate to chat screen
            },
            icon: Icon(
              CupertinoIcons.chat_bubble_2_fill,
              color: iconcolor,
              size: 40,
            ))
      ],
    );
  }
}
