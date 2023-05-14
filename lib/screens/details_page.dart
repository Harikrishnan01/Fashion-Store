import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hb_project1/homepage.dart';
import 'package:hb_project1/mainpage.dart';
import 'package:hb_project1/screens/chat_page.dart';
import 'package:hb_project1/screens/payment_page.dart';
import 'package:hb_project1/screens/review_page.dart';

class Details1 extends StatefulWidget {
  const Details1({super.key});

  @override
  State<Details1> createState() => _Details1State();
}

class _Details1State extends State<Details1> {
  int _currentState = 0;
  late String valueChoose;
  List listItem = ['1', '2', '3', '4'];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (ctx) => HomePage()));
              },
              child: Icon(Icons.arrow_back_ios)),
          backgroundColor: Colors.blueGrey,
          title: Text('Details Page'),
        ),
        body: ListView(
          children: [
            Column(children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Center(
                  child: Container(
                    width: 280,
                    height: 320,
                    //color: Colors.blue,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIjWv3QZDkysGmFO40JeZpl1NzDSzMX3YPRw&usqp=CAU'),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Text(
                  'Women Rayon Straight Kurta Palazzo Set',
                  style: GoogleFonts.poppins(
                      fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          '.',
                          style: GoogleFonts.poppins(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 13.5, left: 10),
                      child: Text(
                        'Care Instructions: Hand Wash Only',
                        style: GoogleFonts.poppins(
                            fontSize: 13.5, color: Colors.grey),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          '.',
                          style: GoogleFonts.poppins(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 13.5, left: 10),
                      child: Text(
                        'Fit Type: Regular',
                        style: GoogleFonts.poppins(
                            fontSize: 13.5, color: Colors.grey),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          '.',
                          style: GoogleFonts.poppins(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 13.5, left: 10),
                      child: Text(
                        'Kurta fabric: Viscose Rayon (Liva approved)',
                        style: GoogleFonts.poppins(
                            fontSize: 13.5, color: Colors.grey),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 320),
                child: Text(
                  'Offers',
                  style: GoogleFonts.poppins(
                      fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  decoration: BoxDecoration(
                      //color: Colors.grey,
                      //borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.grey))),
              SizedBox(
                height: 120,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 25),
                      child: Container(
                        width: 120,
                        decoration: BoxDecoration(border: Border.all()),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5, top: 7),
                          child: Text(
                            'No Cost EMI\nUpto 278.00 EMI interest on savings on Amazon Pay ICICI Bank ',
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 25),
                      child: Container(
                        width: 120,
                        decoration: BoxDecoration(border: Border.all()),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5, top: 7),
                          child: Text(
                            'No Cost EMI\nUpto 278.00 EMI interest on savings on Amazon Pay ICICI Bank ',
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 25),
                      child: Container(
                        width: 120,
                        decoration: BoxDecoration(border: Border.all()),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5, top: 7),
                          child: Text(
                            'No Cost EMI\nUpto 278.00 EMI interest on savings on Amazon Pay ICICI Bank ',
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 25),
                      child: Container(
                        width: 120,
                        decoration: BoxDecoration(border: Border.all()),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5, top: 7),
                          child: Text(
                            'No Cost EMI\nUpto 278.00 EMI interest on savings on Amazon Pay ICICI Bank ',
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey))),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 260),
                child: Text(
                  'Total: 1234.65 ',
                  style: GoogleFonts.poppins(
                      fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 55),
                child: Text('Free scheduled delivery as soon as possible'),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 305),
                child: Text(
                  'In Stock',
                  style: GoogleFonts.poppins(
                      fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 290, top: 13, left: 25),
                child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white),
                    child: DropdownButtonFormField(
                      hint: Text('Qty'),
                      onChanged: (value) {
                        print(value);
                      },
                      items: listItem.map((e) {
                        return DropdownMenuItem(
                          child: Text(e),
                          value: e,
                        );
                      }).toList(),
                    )),
              ),
              SizedBox(
                height: 35,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 100, right: 100, bottom: 15, top: 15),
                  child: Text(
                    'Add to Cart',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (ctx) => PaymentPage()));
                },
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 110, right: 110, bottom: 15, top: 15),
                  child: Text(
                    'Buy Now',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey))),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: ((context) => ReviewPage())));
                },
                child: Row(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Text(
                            'Write your Reviews',
                            style: GoogleFonts.poppins(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Icon(
                        Icons.arrow_right,
                        size: 35,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey))),
              SizedBox(
                height: 20,
              ),
              Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey))),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: ((context) => ChatPage())));
                },
                child: Row(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Text(
                            'Customer Chat',
                            style: GoogleFonts.poppins(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Icon(
                        Icons.arrow_right,
                        size: 35,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey))),
              SizedBox(
                height: 20,
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
