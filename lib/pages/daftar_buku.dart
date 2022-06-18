import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:getdata_book/model/daftarbuku_get.dart';
import 'package:http/http.dart' as http;

class DaftarBuku extends StatefulWidget {
  const DaftarBuku({Key? key}) : super(key: key);

  @override
  State<DaftarBuku> createState() => _DaftarBukuState();
}

class _DaftarBukuState extends State<DaftarBuku> {
  Map<String, dynamic>? responListBook;
  getDataSatuBuku() async {
    var url = Uri.parse('https://api.itbook.store/1.0/books/9781484206485');
    var response = await http.get(
      url,
    );
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
    if (response.statusCode == 200) {
      responListBook = jsonDecode(response.body);
      setState(() {});
    }
  }

  List<Widget> listBuku = [];
  GetDaftarBuku? dataBuku;
  getDataListBuku() async {
    var url = Uri.parse('https://api.itbook.store/1.0/new');
    var response = await http.get(
      url,
    );
    print("Response Status = ${response.statusCode}");
    print("Response Body = ${response.body}");
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      dataBuku = GetDaftarBuku.fromJson(json);
      dataBuku!.books!.forEach((item) {
        final widget = Row(
          children: [
            Image.network(
              item.image!,
              height: 200,
            ),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(item.title!),
                Text(
                  item.subtitle!,
                  style: TextStyle(color: Colors.blueGrey),
                )
              ],
            ))
          ],
        );
        listBuku.add(widget);
      });
      setState(() {});
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getDataSatuBuku();
    getDataListBuku();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Daftar Buku", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.amber,
        centerTitle: true),
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            Text(responListBook == null ? "data" : responListBook!["desc"]),
            ...listBuku,
          ],
        ),
      ),
    );
  }
}
