import 'package:flutter/material.dart';

import 'whatsapp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // initialRoute: "/home1",
      // routes: {
      //   "/home1": (_) => const HomePage(),
      //   "/home2": (_) => const HomePage2(nama: "Mamat"),
      //   "/home3": (_) => const HomePage3(),
      // },
      home: WhatsAppPage(),
    );
  }
}
