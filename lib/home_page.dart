import 'package:flutter/material.dart';

import 'chats_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final color = const Color(0xFF005e53);

  int _index = 0;
  List<Widget> pages = [
    TabBarView(
      children: [
        const ChatPage(),
        Column(
          children: [
            Card(
              color: Colors.red,
              child: Column(
                children: const [
                  Text("Card 1"),
                  Text("Card 1"),
                  Text("Card 1"),
                ],
              ),
            ),
            const Card(
              color: Colors.green,
              child: Text("Card 2"),
            ),
          ],
        ),
        const Center(
          child: Text("Halaman Calls"),
        ),
      ],
    ),
    Center(
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: color,
          leading: const Icon(Icons.home_rounded),
          title: const Text("WhatsApp"),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.camera_alt_outlined),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search_rounded),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert_rounded),
            ),
          ],
          bottom: TabBar(
            tabs: [
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Icon(Icons.chat),
                    Text("Chats"),
                  ],
                ),
              ),
              const Tab(
                text: "Status",
              ),
              const Tab(
                text: "Calls",
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _index,
          onTap: (val) {
            _index = val;
            setState(() {});
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings_rounded),
              label: "Setting",
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: color,
          onPressed: () {},
          child: const Icon(Icons.message_rounded),
        ),
        body: pages[_index],
      ),
    );
  }
}
