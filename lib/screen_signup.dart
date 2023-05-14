// import 'package:bookapp/authentication.dart';
// import 'package:bookapp/mainpage.dart';
// import 'package:bookapp/sign_in.dart';
// import 'package:bookapp/sign_up.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hb_project1/homepage.dart';
import 'package:hb_project1/mainpage.dart';
import 'package:hb_project1/screens/screen_signin.dart';

class screenSignUp extends StatelessWidget {
  const screenSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    final _email = TextEditingController();
    final _password = TextEditingController();
    final _conpassword = TextEditingController();
    final _formkey = GlobalKey<FormState>();
    return Scaffold(
      body: Form(
        key: _formkey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Text(
              'Sign Up',
              style:
                  GoogleFonts.roboto(fontSize: 30, fontWeight: FontWeight.bold),
            )),
            SizedBox(
              height: 55,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
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
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: TextField(
                controller: _password,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  hintText: 'Password',
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: TextField(
                controller: _conpassword,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  hintText: 'Confirm Password',
                ),
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
                      .createUserWithEmailAndPassword(
                          email: _email.text, password: _password.text)
                      .then((value) {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (ctx) => HomePage()));
                  }).onError((error, stackTrace) {
                    print("Error ${error.toString()}");
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 95, right: 95, top: 15, bottom: 15),
                  child: Text('Sign Up'),
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
                          'Sign In',
                          style: TextStyle(color: Colors.blue),
                        )),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  void GotoSignUp(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (ctx) => screenSignIn()));
  }

  // void goToMainPage(BuildContext ctx) {
  //   Navigator.of(ctx).push(MaterialPageRoute(builder: (ctx) => MainPage()));
  // }
}
