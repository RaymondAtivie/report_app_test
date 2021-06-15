import 'dart:convert';

enum ClientStatus {
  pending,
  unpaid,
  paid,
}

class Client {
  String name;
  String image;
  int price;
  ClientStatus status;

  Client({
    required this.name,
    required this.image,
    required this.price,
    this.status = ClientStatus.pending,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'image': image,
      'price': price,
    };
  }

  factory Client.fromMap(Map<String, dynamic> map) {
    ClientStatus status;
    switch (map['status']) {
      case 'paid':
        status = ClientStatus.paid;
        break;
      case 'unpaid':
        status = ClientStatus.unpaid;
        break;
      default:
        status = ClientStatus.pending;
    }

    return Client(
      name: map['name'] as String,
      image: map['image'] as String,
      price: map['price'] as int,
      status: status,
    );
  }

  String toJson() => json.encode(toMap());

  factory Client.fromJson(String source) =>
      Client.fromMap(json.decode(source) as Map<String, dynamic>);
}
