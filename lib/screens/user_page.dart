import 'package:flutter/material.dart';

class userPage extends StatelessWidget {
  const userPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blueGrey,
        title: Text('Account'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      'Hello, ',
                      style: TextStyle(fontSize: 23),
                    ),
                  ),
                ],
              ),
              Text(
                'Mr Harikrishnan D. S.',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Icon(
                  Icons.account_circle_rounded,
                  size: 45,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Column(
                  children: [
                    Container(
                      width: 180,
                      height: 75,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 211, 209, 209),
                          borderRadius: BorderRadius.circular(40)),
                      child: Center(
                          child: Text(
                        'Your Orders',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Container(
                  width: 180,
                  height: 75,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 211, 209, 209),
                      borderRadius: BorderRadius.circular(40)),
                  child: Center(
                      child: Text(
                    'Buy Again',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
                ),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Column(
                  children: [
                    Container(
                      width: 180,
                      height: 75,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 211, 209, 209),
                          borderRadius: BorderRadius.circular(40)),
                      child: Center(
                          child: Text(
                        'Your Account',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Container(
                  width: 180,
                  height: 75,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 211, 209, 209),
                      borderRadius: BorderRadius.circular(40)),
                  child: Center(
                      child: Text(
                    'Your Wishlist',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 288),
            child: Text(
              'Your Orders',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
          ),
          // SizedBox(
          //   height: 10,
          // ),
          SizedBox(
            height: 195,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Container(
                        width: 180,
                        height: 160,
                        // color: Colors.grey,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIjWv3QZDkysGmFO40JeZpl1NzDSzMX3YPRw&usqp=CAU'))),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(),
                  child: Row(
                    children: [
                      Container(
                        width: 180,
                        height: 160,
                        // color: Colors.grey,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSfxbPrnsWlDo9RjJ1xOWSVTM_TStKlnP_PQ&usqp=CAU'))),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(),
                  child: Row(
                    children: [
                      Container(
                        width: 180,
                        height: 160,
                        // color: Colors.grey,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfFoF2gIUot_DLAoB-sUKlzym_0oua6eXAow&usqp=CAU'))),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
              decoration: BoxDecoration(
                  border: Border.all(
                      width: 2, color: Color.fromARGB(255, 209, 208, 208)))),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 275, top: 20),
            child: Text(
              'Your Account',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        width: 170,
                        height: 65,
                        //color: Colors.grey,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey)),
                        child: Center(child: Text('Your Addresses')),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        width: 180,
                        height: 65,
                        //color: Colors.grey,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey)),
                        child: Center(child: Text('Manage Your Profiles')),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        width: 180,
                        height: 65,
                        //color: Colors.grey,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey)),
                        child: Center(child: Text('Subscribe & Save')),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
              decoration: BoxDecoration(
                  border: Border.all(
                      width: 2, color: Color.fromARGB(255, 209, 208, 208)))),
        ],
      ),
    );
  }
}
