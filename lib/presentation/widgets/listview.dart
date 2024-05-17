import 'package:flutter/material.dart';

class StatusListview extends StatelessWidget {
  const StatusListview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(2.0),
          child: Container(
            child: CircleAvatar(
              radius: 40,
            ),
          ),
        );
      },
    );
  }
}
