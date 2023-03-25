import 'package:flutter/material.dart';

class ListMessage extends StatelessWidget {
  const ListMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        message_tile(),
        message_tile(),
        message_tile(),
        message_tile(),
        message_tile(),
        message_tile(),
        message_tile(),
        message_tile(),
        message_tile(),
        message_tile(),
        message_tile(),
      ],
    );
  }
}

class message_tile extends StatelessWidget {
  const message_tile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text("Sumanto"),
      subtitle: const Text("Hallo bang selamat pagi"),
      leading: const CircleAvatar(
        backgroundImage: NetworkImage("https://picsum.photos/536/354"),
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text("11.45 AM"),
          CircleAvatar(
            radius: 12,
            backgroundColor: Color(0xFF066056),
            child: Text(
              "2",
              style: TextStyle(
                fontSize: 10,
              ),
            ),
          )
        ],
      ),
    );
  }
}
