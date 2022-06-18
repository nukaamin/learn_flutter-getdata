import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[300],
        body: Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, "/detailbuku");
          },
          style: ElevatedButton.styleFrom(
              primary: Colors.indigo,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              textStyle: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          child: const Text("Lihat Detail Buku", style: TextStyle(color: Colors.amber),),
        ),
      ]),
    ));
  }
}
