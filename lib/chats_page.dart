import 'package:flutter/material.dart';
import 'package:navigation/detail_chat.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ChatTile(context),
        ChatTile(context),
        ChatTile(context),
        ChatTile(context),
        ChatTile(context),
        ChatTile(context),
        ChatTile(context),
        ChatTile(context),
        ChatTile(context),
        ChatTile(context),
        ChatTile(context),
        ChatTile(context),
      ],
    );
  }

  ListTile ChatTile(BuildContext context) {
    return ListTile(
      title: const Text(
        "Pak RT",
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: const Text("Apa kabar pak?"),
      leading: const CircleAvatar(
        // backgroundImage: NetworkImage("https://picsum.photos/536/354"),
        backgroundImage: AssetImage("assets/gambar.jpeg"),
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          Text("11.45 PM"),
          CircleAvatar(
            radius: 12,
            backgroundColor: Color(0xFF005e53),
            child: Text("2"),
          ),
        ],
      ),
      onTap: () {
        // Untuk navigasi
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => const RoomChat(),
          ),
        );
      },
    );
  }
}
