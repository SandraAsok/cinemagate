import 'package:cinemagate/presentation/widgets/appbar.dart';
import 'package:cinemagate/presentation/widgets/listview.dart';
import 'package:cinemagate/presentation/widgets/widgets.dart';
import 'package:cinemagate/utilities/utilities.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(50), child: HomeAppbar()),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            height20,
            SizedBox(height: 80, child: StatusListview()),
            height20,
            SizedBox(
              height: MediaQuery.of(context).size.height * 3,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: PostContainer(),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
