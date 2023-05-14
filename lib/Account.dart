import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            body: Center(
              child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 40),
                      child: Icon(
                        Icons.android,
                        size: 80,
                      ),
                    ),
                    const SizedBox(
                      height: 120,
                    ),
                    Text(
                      'Hello there!',
                      style:
                          // TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                          GoogleFonts.poppins(
                              fontSize: 30, fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 118),
                      child: Text(
                        'Enter email or mobile number',
                        // style: TextStyle(
                        //     fontSize: 15, fontWeight: FontWeight.bold),
                        style: GoogleFonts.poppins(
                            fontSize: 15, fontWeight: FontWeight.w700),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 20, right: 20, top: 5),
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Enter email or mobile'),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 240),
                      child: Text(
                        'Enter Password',
                        // style: TextStyle(
                        //     fontSize: 15, fontWeight: FontWeight.bold),
                        style: GoogleFonts.poppins(
                            fontSize: 15, fontWeight: FontWeight.w700),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 20, right: 20, top: 5),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(), hintText: 'Password'),
                      ),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.purple),
                        onPressed: () {},
                        child: const Padding(
                          padding: EdgeInsets.only(
                              left: 90, right: 90, top: 15, bottom: 15),
                          child: Text('Continue'),
                        )),
                  ]),
            )));
  }
}
