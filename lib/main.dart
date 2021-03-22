import 'package:flutter/material.dart';

import 'WhatsAppHome.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {



    return MaterialApp(
      title: 'Whatsapp', theme: ThemeData(
        primaryColor: Color(0XFF075E54),
        accentColor: Color(0XFF25D366),

    ),
      debugShowCheckedModeBanner: false,
      home: new WhatsAppHome(),

    );
  }
}


