import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:hb_project1/homepage.dart';
// import 'package:hb_project1/mainpage.dart';
// import 'package:hb_project1/screens/chat_page.dart';
// import 'package:hb_project1/screens/details_page.dart';
import 'package:hb_project1/screens/manufacture_page.dart';
import 'package:hb_project1/screens/notifcation_page.dart';

import 'firebase_options.dart';
import 'package:hb_project1/screens/screen_signin.dart';

main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(hari());
}

class hari extends StatelessWidget {
  const hari({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: HomePage(),
    );
  }
}
