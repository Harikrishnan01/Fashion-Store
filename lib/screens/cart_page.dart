import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  CartPage({super.key});

  @override
  List Images = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIjWv3QZDkysGmFO40JeZpl1NzDSzMX3YPRw&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSfxbPrnsWlDo9RjJ1xOWSVTM_TStKlnP_PQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfFoF2gIUot_DLAoB-sUKlzym_0oua6eXAow&usqp=CAU'
  ];
  List Texts = [
    'Anouk-Striped \nStraight Kurtas',
    'Pure Cotton \nKurta Set',
    'Women Cotton \nPrinted Kurta',
  ];
  List listItem = ['0', '1', '2', '3', '4'];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 50),
          child: Text('Cart'),
        ),
        backgroundColor: Colors.blueGrey,
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(
            itemCount: 3,
            itemBuilder: (BuildContext ctx, int index) {
              return Card(
                child: ListTile(
                  title: Container(
                    height: 200,
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.grey)),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Column(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 20, top: 20),
                                  child: Container(
                                    width: 150,
                                    height: 150,
                                    //color: Colors.blue
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                        image: NetworkImage(Images[index]),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10, top: 10),
                              child: Column(
                                children: [
                                  Text(
                                    Texts[index],
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text('MRP #1212'),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  // Padding(
                                  //   padding: const EdgeInsets.only(left: 10),
                                  //   child: Container(
                                  //       width: 60,
                                  //       height: 45,
                                  //       // color: Colors.blue,
                                  //       decoration: BoxDecoration(
                                  //           border: Border.all(
                                  //               color: Colors.grey, width: 1),
                                  //           borderRadius:
                                  //               BorderRadius.circular(12),
                                  //           color: Colors.white),
                                  //       child: DropdownButtonFormField(
                                  //         hint: Text('Qty'),
                                  //         onChanged: (value) {
                                  //           print(value);
                                  //         },
                                  //         items: listItem.map((e) {
                                  //           return DropdownMenuItem(
                                  //             child: Text(e),
                                  //             value: e,
                                  //           );
                                  //         }).toList(),
                                  //       )),
                                  // ),
                                ],
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(
                                right: 20,
                              ),
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.delete,
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
