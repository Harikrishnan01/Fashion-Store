import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hb_project1/Bottom_Nav_Widget.dart';
import 'package:hb_project1/widgets/Listview1.dart';
import 'package:hb_project1/widgets/Listview2.dart';
import 'package:hb_project1/widgets/appbar_title.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentState = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //body: Column(children: [Text('Home Page')]),
        body: Column(children: [
          appbartitlewidget(),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Text(
                      'New Arrivals',
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
              Spacer(),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      // goToNewArrival(context);
                    },
                    child: Text(
                      'View all ',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        //  goToNewArrival(context);
                      },
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 12,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Listview1(),
          Row(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'My Collections',
                      style: GoogleFonts.poppins(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              )
            ],
          ),
          Listview2(),
        ]),
        //bottomNavigationBar: BottomWidget(),
      ),
    );
  }

  // void goToNewArrival(BuildContext ctx) {
  //   Navigator.of(ctx).push(MaterialPageRoute(builder: (ctx) => NewArrivals()));
  // }

  // void goToBook1(BuildContext ctx) {
  //   Navigator.of(ctx).push(MaterialPageRoute(builder: (ctx) => ScreenBook1()));
  // }

  // void goToBook2(BuildContext ctx) {
  //   Navigator.of(ctx).push(MaterialPageRoute(builder: (ctx) => ScreenBook2()));
  // }
}
