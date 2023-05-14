import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Listview2 extends StatelessWidget {
  const Listview2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  width: 200,
                  height: 225,
                  //color: Colors.blue,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://assets.vogue.com/photos/5f341f6f4721c86585cbb800/master/w_2560%2Cc_limit/fullsizeoutput_6bcd_1_1080x.jpg'),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100, left: 20),
                child: Column(
                  children: [
                    Text(
                      'Berrylush',
                      style: GoogleFonts.poppins(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Gorgeous Red Floral \nRuched Dress',
                      textAlign: TextAlign.center,
                      style:
                          GoogleFonts.poppins(fontSize: 12, color: Colors.grey),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'MRP  #528 ',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 130),
                child: Container(
                  width: 200,
                  height: 225,
                  //color: Colors.yellow,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://www.shahifits.in/wp-content/uploads/2022/04/Latest-Design-of-Beautiful-Black-Dress-for-Party.jpg'),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100, left: 20),
                child: Column(
                  children: [
                    Text(
                      'SASSAFRAS',
                      style: GoogleFonts.poppins(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Black Accordion Pleats \nEmpire Dress',
                      textAlign: TextAlign.center,
                      style:
                          GoogleFonts.poppins(fontSize: 12, color: Colors.grey),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'MRP  #628 ',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 130),
                child: Container(
                  width: 200,
                  height: 225,
                  //color: Colors.black,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://assets.ajio.com/medias/sys_master/root/20220617/4ASV/62ac820eaeb26921af36258b/-473Wx593H-464497062-pink-MODEL.jpg'),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100, left: 20),
                child: Column(
                  children: [
                    Text(
                      'Tokyo Talkies',
                      style: GoogleFonts.poppins(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Puff Sleeves Floral \nHigh-Low Maxi Dress',
                      textAlign: TextAlign.center,
                      style:
                          GoogleFonts.poppins(fontSize: 12, color: Colors.grey),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'MRP  #728 ',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 130),
                child: Container(
                  width: 200,
                  height: 225,
                  //color: Colors.orange,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://assets.myntassets.com/dpr_1.5,q_60,w_400,c_limit,fl_progressive/assets/images/21680634/2023/1/25/819e4b4f-88a7-44ef-a92c-a0de4cd9637e1674619069232KinjoWomenEmbroideredGeorgetteMaxiDesignerGown1.jpg'),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100, left: 20),
                child: Column(
                  children: [
                    Text(
                      'Tokyo Talkies',
                      style: GoogleFonts.poppins(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Women Gorgeous\n Red Solid Dress',
                      textAlign: TextAlign.center,
                      style:
                          GoogleFonts.poppins(fontSize: 12, color: Colors.grey),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'MRP  #728 ',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 50,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
