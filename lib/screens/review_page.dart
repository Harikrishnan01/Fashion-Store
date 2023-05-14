import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hb_project1/mainpage.dart';
import 'package:hb_project1/screens/details_page.dart';

class ReviewPage extends StatelessWidget {
  const ReviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text('Reviews'),
        ),
        body: Column(
          //  mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 100, top: 10),
              child: Text(
                'How would you rate the product?',
                style: GoogleFonts.poppins(
                    fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: 200,
              height: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTprpzX61Q-WPZbuxPhqxaGZeJ71TPoX-Zd5Q&usqp=CAU'))),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 230),
              child: Text(
                'Title your review',
                style: GoogleFonts.poppins(
                    fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25, left: 25),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Whats important to know',
                    border: OutlineInputBorder()),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 230),
              child: Text(
                'Write your review',
                style: GoogleFonts.poppins(
                    fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: 350,
              height: 250,
              //decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(bottom: 200),
                    hintText: 'What did you like or dislike? ',
                    border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 180),
              child: Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey))),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Details1()));
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 30, right: 30, top: 13, bottom: 13),
                            child: Text(
                              'Submit',
                              style: TextStyle(color: Colors.black),
                            ),
                          ))
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Details1()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 40, right: 40, top: 13, bottom: 13),
                        child: Text(
                          'Next',
                          style: TextStyle(color: Colors.black),
                        ),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
