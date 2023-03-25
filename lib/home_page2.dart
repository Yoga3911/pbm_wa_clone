import 'package:flutter/material.dart';

class HomePage2 extends StatelessWidget {
  final String nama;
  const HomePage2({
    super.key,
    required this.nama,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Page 2",
              style: TextStyle(
                color: Colors.white,
                fontSize: 36,
              ),
            ),
            Text(
              nama,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 36,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigator.pushReplacement(
                //   context,
                //   MaterialPageRoute(
                //     builder: (_) {
                //       return const HomePage3();
                //     },
                //   ),
                // );
                Navigator.pushReplacementNamed(context, "/home3");
              },
              child: const Text("Ke Page 3"),
            ),
          ],
        ),
      ),
    );
  }
}
