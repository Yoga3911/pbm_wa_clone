import 'package:flutter/material.dart';
import 'package:navigation/home_page.dart';
import 'package:navigation/home_page2.dart';
import 'package:navigation/home_page3.dart';

import 'list_message.dart';

class WhatsAppPage extends StatefulWidget {
  const WhatsAppPage({super.key});

  @override
  State<WhatsAppPage> createState() => _WhatsAppPageState();
}

class _WhatsAppPageState extends State<WhatsAppPage> {
  final appColor = const Color(0xFF066056);
  int _index = 0;

  List<Widget> pages = [
    const HomePage(),
    const HomePage2(nama: "Mamat"),
    const HomePage3(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: _index,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("WhatsApp"),
          backgroundColor: appColor,
          // leading: const Icon(Icons.home),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search_rounded),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert_outlined),
            ),
          ],
          bottom: TabBar(
            onTap: (val) {
              _index = val;
              setState(() {});
            },
            tabs: const [
              Tab(
                text: "Chats",
              ),
              Tab(
                text: "Status",
              ),
              Tab(
                text: "Calls",
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: appColor,
          child: const Icon(Icons.message_rounded),
        ),
        body: const ListMessage(),
      ),
    );
  }
}
