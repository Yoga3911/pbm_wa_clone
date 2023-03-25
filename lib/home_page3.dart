import 'package:flutter/material.dart';

class HomePage3 extends StatelessWidget {
  const HomePage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Page 3",
              style: TextStyle(
                color: Colors.white,
                fontSize: 36,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigator.pushAndRemoveUntil(
                //   context,
                //   MaterialPageRoute(
                //     builder: (_) {
                //       return const HomePage();
                //     },
                //   ),
                //   (route) => false,
                // );
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  "/home1",
                  (route) => false,
                );
              },
              child: const Text("Kembali ke Page 1"),
            ),
          ],
        ),
      ),
    );
  }
}
