import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hb_project1/get_name.dart';

class ManufacturerPage extends StatelessWidget {
  ManufacturerPage({super.key});

  @override
  final Stream<QuerySnapshot> users =
      FirebaseFirestore.instance.collection('users').snapshots();
  // List<String> docIds = [];
  final _ageController = TextEditingController();
  final _nameController = TextEditingController();

  Future addUserDetails(String name, int age) async {
    await FirebaseFirestore.instance.collection('users').add({
      'name': name,
      'age': age,
    });
  }

  Future Getdetails() async {
    addUserDetails(_nameController.text, int.parse(_ageController.text));
  }

  // Future getDocId() async {
  //   await FirebaseFirestore.instance
  //       .collection('users')
  //       .get()
  //       .then((snapshot) => snapshot.docs.forEach((element) {
  //             print(element.reference);
  //             docIds.add(element.reference.id);
  //           }));
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Write Data to Cloud Firestore',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 45, right: 45),
              child: TextField(
                controller: _nameController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Write Name'),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 45, right: 45),
              child: TextField(
                controller: _ageController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: "Write Age"),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  Getdetails();
                },
                child: Text('Submit')),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Read Data from Cloud Firestore',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),

            Expanded(
              child: Container(
                height: 250,
                padding: EdgeInsets.symmetric(vertical: 20),
                child: StreamBuilder(
                    stream: users,
                    builder: (BuildContext context,
                        AsyncSnapshot<QuerySnapshot> snapshot) {
                      if (snapshot.hasError) {
                        return Text('Error Occured');
                      }
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return Text('Loading');
                      }
                      final data = snapshot.requireData;
                      return ListView.builder(
                          itemCount: data.size,
                          itemBuilder: (context, index) {
                            return Text(
                                'My name is ${data.docs[index]['name']} and I am ${data.docs[index]['age']}');
                          });
                    }),
              ),
            )
            //Expanded(
            // child: FutureBuilder(
            //     future: getDocId(),
            //     builder: (context, snapshot) {
            //       return ListView.builder(
            //           itemCount: docIds.length,
            //           itemBuilder: (context, index) {
            //             return ListTile(
            //               title: GetUsername(documentId: docIds[index]),
            //             );
            //           });
            //     }))
          ],
        ),
      ),
    );
  }
}
