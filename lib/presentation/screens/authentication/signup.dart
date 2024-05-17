import 'package:cinemagate/presentation/widgets/bottom_nav.dart';
import 'package:cinemagate/utilities/utilities.dart';
import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/welcome.jpeg'),
                fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 100,
              child: Icon(Icons.camera),
            ),
            height20,
            const TextField(
              obscureText: true,
              style: TextStyle(color: Colors.white),
              cursorColor: Colors.white,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                prefixIconColor: Colors.white,
                contentPadding: EdgeInsets.all(15),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 10,
                      style: BorderStyle.solid,
                    )),
                labelText: 'Enter UserName',
                labelStyle: TextStyle(color: Colors.white),
              ),
            ),
            height20,
            const TextField(
              obscureText: true,
              style: TextStyle(color: Colors.white),
              cursorColor: Colors.white,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                prefixIconColor: Colors.white,
                contentPadding: EdgeInsets.all(15),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 10,
                      style: BorderStyle.solid,
                    )),
                labelText: 'Enter Bio',
                labelStyle: TextStyle(color: Colors.white),
              ),
            ),
            height20,
            const TextField(
              style: TextStyle(color: Colors.white),
              cursorColor: Colors.white,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                prefixIconColor: Colors.white,
                contentPadding: EdgeInsets.all(15),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 10,
                      style: BorderStyle.solid,
                    )),
                labelText: 'Enter Email Address',
                labelStyle: TextStyle(color: Colors.white),
              ),
            ),
            height20,
            const TextField(
              obscureText: true,
              style: TextStyle(color: Colors.white),
              cursorColor: Colors.white,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                prefixIconColor: Colors.white,
                contentPadding: EdgeInsets.all(15),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 10,
                      style: BorderStyle.solid,
                    )),
                labelText: 'Enter Password',
                labelStyle: TextStyle(color: Colors.white),
              ),
            ),
            height20,
            ElevatedButton(
                style: ButtonStyle(
                    side: MaterialStateProperty.all(
                        const BorderSide(color: Colors.white))),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BottomNav(),
                      ));
                },
                child: const Text(
                  "Sign Up",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                )),
          ],
        ),
      ),
    );
  }
}
