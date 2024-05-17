import 'package:cinemagate/utilities/utilities.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          height20,
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              cursorColor: black,
              decoration: InputDecoration(
                  labelText: 'search',
                  labelStyle: GoogleFonts.princessSofia(
                    fontSize: 20,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: black),
                  ),
                  prefixIcon: Icon(Icons.search),
                  suffixIcon:
                      IconButton(onPressed: () {}, icon: Icon(Icons.cancel)),
                  contentPadding: EdgeInsets.all(10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
