import 'package:flutter/material.dart';
import 'package:getdata_book/pages/beranda.dart';
import 'package:getdata_book/pages/daftar_buku.dart';
import 'package:getdata_book/pages/detail_buku.dart';

void main() {
  runApp(const MySingleWidget());
}

class MySingleWidget extends StatelessWidget {
  const MySingleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Daftar Buku",
      initialRoute: "/",
      routes: {
        "/": (context) => const FirstPage(),
        "/daftarbuku": (context) => DaftarBuku(),
        "/detailbuku":(context) => DetailBuku()
      },
    );
  }
  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     debugShowCheckedModeBanner: true,
  //     home: Scaffold(
  //       backgroundColor: Colors.white,
  //         appBar: AppBar(
  //           centerTitle: true,
  //           backgroundColor: Colors.amber,
  //           title: const Text("Book in My Library"),
  //         ),
  //         body: bodyViewBook(),
  //       ),
  //     );
  // }
}

// Widget bodyViewBook() {
//   return Column(
//     mainAxisAlignment: MainAxisAlignment.start,
//     children: [
//       SizedBox(
//         height: 200,
//             child: Row( 
//               children: [
//                 Expanded(child: Container(margin: const EdgeInsets.all(5), decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)), color: Colors.blue),)),
//                 Expanded(child: Container(margin: const EdgeInsets.all(5), decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)), color: Colors.brown),))
//               ],
//             ),
//     ),
//     Container(
//       margin: const EdgeInsets.all(10),
//       height: 50,
//       decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5)),
//       color: Colors.indigo,),
//       child: const Center(child: Text("BUY"),),
//     ),
//     Container(
//       margin: const EdgeInsets.all(10),
//       height: 200,
//       child: const Text("Deskripsi dari bukunya"),
//     ),
//     SizedBox(
//       height: 160,
//       child: Row(
//         children: [
//           Expanded(child: Container(margin: const EdgeInsets.all(5), decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)), color: Colors.green),)),
//           Expanded(child: Container(margin: const EdgeInsets.all(5), decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)), color: Color.fromARGB(255, 84, 121, 85)),)),
//           Expanded(child: Container(margin: const EdgeInsets.all(5), decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)), color: Color.fromARGB(255, 87, 92, 87)),))
//         ],
//       ),
//     )],
//   );
// }
