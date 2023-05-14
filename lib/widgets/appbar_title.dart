import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hb_project1/screens/screen_signin.dart';

class appbartitlewidget extends StatelessWidget {
  const appbartitlewidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 30),
              child: Text(
                '20',
                style: GoogleFonts.poppins(
                    fontSize: 30, fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 3),
              child: Text(
                'Thu',
                style: GoogleFonts.poppins(
                  color: Colors.grey,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 7),
              child: Text(
                'Mar',
                style: GoogleFonts.poppins(color: Colors.grey),
              ),
            )
          ],
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                ' 2023',
                style: GoogleFonts.poppins(color: Colors.grey),
              ),
            )
          ],
        ),
        Spacer(),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 15, top: 8),
              child: Container(
                width: 30,
                height: 40,
                //color: Colors.blue,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://m.media-amazon.com/images/M/MV5BZDk1ZmU0NGYtMzQ2Yi00N2NjLTkyNWEtZWE2NTU4NTJiZGUzXkEyXkFqcGdeQXVyMTExNDQ2MTI@._V1_.jpg'),
                  ),
                ),
              ),
            )
          ],
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 20),
              child: InkWell(
                  onTap: () {
                    FirebaseAuth.instance.signOut().then((value) {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (ctx) => screenSignIn()));
                    });
                  },
                  child: Icon(Icons.logout)),
            )
          ],
        ),
      ],
    );
  }
}
