import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hb_project1/homepage.dart';
import 'package:hb_project1/mainpage.dart';
import 'package:hb_project1/screen_signup.dart';

class screenSignIn extends StatelessWidget {
  screenSignIn({super.key});

  @override
  final _email = TextEditingController();
  final _password = TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Text(
            'Sign In',
            style:
                GoogleFonts.roboto(fontSize: 30, fontWeight: FontWeight.bold),
          )),
          SizedBox(
            height: 55,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 35, right: 35),
            child: TextField(
              controller: _email,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  hintText: 'Email'),
            ),
          ),
          SizedBox(
            height: 18,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 35, right: 35),
            child: TextField(
              controller: _password,
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                hintText: 'Password',
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 190),
            child: Text(
              'Forgot Password?',
              style: TextStyle(decoration: TextDecoration.underline),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              onPressed: () {
                FirebaseAuth.instance
                    .signInWithEmailAndPassword(
                        email: _email.text, password: _password.text)
                    .then((value) {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (ctx) => screenSignIn()));
                });
              },
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 110, right: 110, top: 15, bottom: 15),
                child: Text('Sign in'),
              )),
          SizedBox(
            height: 45,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text('Doesnt have an account? '),
                ],
              ),
              Column(
                children: [
                  GestureDetector(
                      onTap: () {
                        GotoSignUp(context);
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(color: Colors.blue),
                      )),
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  void GotoSignUp(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (ctx) => screenSignUp()));
  }

  // void GotoMAinPage(BuildContext ctx) {
  //   Navigator.of(ctx).push(MaterialPageRoute(builder: (ctx) => HomePage()));
  // }
}
