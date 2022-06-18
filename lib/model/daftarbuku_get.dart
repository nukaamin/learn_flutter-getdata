class GetDaftarBuku {
  String? error;
  String? total;
  List<Books>? books;

  GetDaftarBuku({this.error, this.total, this.books});

  GetDaftarBuku.fromJson(Map<String, dynamic> json) {
    error = json['error'];
    total = json['total'];
    if (json['books'] != null) {
      books = <Books>[];
      json['books'].forEach((v) {
        books!.add(new Books.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['error'] = this.error;
    data['total'] = this.total;
    if (this.books != null) {
      data['books'] = this.books!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

// class GetData1 {
//   String? image;

//   GetData1({this.image});

//   GetData1.fromJson(Map<String, dynamic>json) {
//     image = json['image'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['image'] = image;
//     return data;
//   }
// }

// class GetData2 {
//   String? image;

//   GetData2({this.image});

//   GetData2.fromJson(Map<String, dynamic>json) {
//     image = json['image'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['image'] = image;
//     return data;
//   }
// }

// class GetData3 {
//   String? image;

//   GetData3({this.image});

//   GetData3.fromJson(Map<String, dynamic>json) {
//     image = json['image'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['image'] = image;
//     return data;
//   }
// }

class Books {
  String? title;
  String? subtitle;
  String? isbn13;
  String? price;
  String? image;
  String? url;

  Books(
      {this.title,
      this.subtitle,
      this.isbn13,
      this.price,
      this.image,
      this.url});

  Books.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    subtitle = json['subtitle'];
    isbn13 = json['isbn13'];
    price = json['price'];
    image = json['image'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['subtitle'] = this.subtitle;
    data['isbn13'] = this.isbn13;
    data['price'] = this.price;
    data['image'] = this.image;
    data['url'] = this.url;
    return data;
  }
}
