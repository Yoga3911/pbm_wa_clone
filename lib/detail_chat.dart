import 'package:flutter/material.dart';

class RoomChat extends StatelessWidget {
  const RoomChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text(
          "Room Chat",
          style: TextStyle(
            fontSize: 64,
          ),
        ),
      ),
    );
  }
}
