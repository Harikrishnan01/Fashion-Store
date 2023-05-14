import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class screenSearch extends StatefulWidget {
  screenSearch({super.key});

  @override
  State<screenSearch> createState() => _screenSearchState();
}

class _screenSearchState extends State<screenSearch> {
  List<Map<String, dynamic>> items = [
    {"id": 1, "name": "Red Skirt"},
    {"id": 2, "name": "White Skirt"},
    {"id": 3, "name": "Blue Skirt"},
    {"id": 5, "name": "Purple Skirt"},
    {"id": 6, "name": "Black Skirt"},
    {"id": 7, "name": "Red Churidar"},
    {"id": 8, "name": "Grey Skirt"},
    {"id": 9, "name": "Red Kurta"},
  ];

  List<Map<String, dynamic>> _foundUsers = [];
  @override
  void initState() {
    _foundUsers = items;
    super.initState();
  }

  void runfilter(String enteredValue) {
    List<Map<String, dynamic>> results = [];
    if (enteredValue.isEmpty) {
      results = items;
    } else {
      results = items
          .where((user) =>
              user["name"].toLowerCase().contains(enteredValue.toLowerCase()))
          .toList();
    }
    setState(() {
      _foundUsers = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(),
              child: Text(
                'Search for the item',
                style: GoogleFonts.poppins(
                    fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextField(
                onChanged: (value) => runfilter(value),
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Search for item",
                    prefixIcon: Icon(Icons.search)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: _foundUsers.length,
                    itemBuilder: (BuildContext ctx, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 30, right: 30),
                        child: Card(
                          //key: ValueKey(_foundUsers[index]['id']),
                          margin: EdgeInsets.only(top: 20),
                          color: Color.fromARGB(255, 232, 230, 230),
                          child: ListTile(
                            leading: Text(
                              _foundUsers[index]['id'].toString(),
                              style: GoogleFonts.poppins(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            title: Text(
                              _foundUsers[index]['name'].toString(),
                              style: GoogleFonts.poppins(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      );
                    }))
          ],
        ),
      ),
    );
  }
}
