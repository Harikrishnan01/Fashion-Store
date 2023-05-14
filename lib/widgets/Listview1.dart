import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hb_project1/screens/details_page.dart';

class Listview1 extends StatelessWidget {
  const Listview1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 345,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 10),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (ctx) => Details1()));
                      },
                      child: Container(
                        width: 200,
                        height: 250,
                        // color: Colors.yellow,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIjWv3QZDkysGmFO40JeZpl1NzDSzMX3YPRw&usqp=CAU'),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Anouk',
                      style: GoogleFonts.poppins(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Striped Straight Kurtas',
                      style:
                          GoogleFonts.poppins(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 10),
                child: Column(
                  children: [
                    Container(
                      width: 200,
                      height: 250,
                      //color: Colors.blue,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSfxbPrnsWlDo9RjJ1xOWSVTM_TStKlnP_PQ&usqp=CAU'),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Sangria',
                      style: GoogleFonts.poppins(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Pure Cotton Kurta Set',
                      style:
                          GoogleFonts.poppins(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 10),
                child: Column(
                  children: [
                    Container(
                      width: 200,
                      height: 250,
                      //color: Colors.yellow,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfFoF2gIUot_DLAoB-sUKlzym_0oua6eXAow&usqp=CAU'),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'SURHI',
                      style: GoogleFonts.poppins(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Women Cotton Printed \nKurta',
                      textAlign: TextAlign.center,
                      style:
                          GoogleFonts.poppins(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 10),
                child: Column(
                  children: [
                    Container(
                      width: 200,
                      height: 250,
                      //color: Colors.yellow,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvBMSBy0SjVK3DtM6zQNEnJuKt7y6xKNx1Fw&usqp=CAU'),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'KALINI',
                      style: GoogleFonts.poppins(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Women Printed Kurta\n Set',
                      textAlign: TextAlign.center,
                      style:
                          GoogleFonts.poppins(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
