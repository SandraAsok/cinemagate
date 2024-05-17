import 'package:cinemagate/presentation/widgets/decoration_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PostContainer extends StatelessWidget {
  const PostContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      decoration: post_container_decoration(),
      child: Column(
        children: [
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 20,
                ),
              ),
              Text("Username",
                  style: GoogleFonts.princessSofia(
                      fontSize: 20, fontWeight: FontWeight.bold)),
              const Spacer(),
              IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
            ],
          ),
          Container(
            height: 380,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                      'https://m.media-amazon.com/images/S/pv-target-images/c7ef3181fc08d933f973d8da67ae0b236b4a4dad115abcbd869c4b00f3caf523._SX1080_FMpng_.png',
                    ),
                    fit: BoxFit.fill)),
          ),
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite_border, size: 30)),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(CupertinoIcons.chat_bubble, size: 30)),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.bookmark_border, size: 30))
            ],
          )
        ],
      ),
    );
  }
}
