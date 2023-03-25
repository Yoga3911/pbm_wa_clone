import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const namaUser = "Sugeng";
    TextEditingController controller = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.red,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Page 1",
              style: TextStyle(
                color: Colors.white,
                fontSize: 36,
              ),
            ),
            TextField(
              controller: controller,
            ),
            ElevatedButton(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (_) {
                //       return HomePage2(nama: controller.text);
                //     },
                //   ),
                // );
                Navigator.pushNamed(context, "/home2");
              },
              child: const Text("Ke Page 2"),
            ),
          ],
        ),
      ),
    );
  }
}
