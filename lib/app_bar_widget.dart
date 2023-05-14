import 'package:flutter/material.dart';

class appbarwidget extends StatelessWidget {
  const appbarwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 70,
            color: Colors.yellow,
            child: Text(
              'Search Box can be given',
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          )
        ],
      ),
    );
  }
}
