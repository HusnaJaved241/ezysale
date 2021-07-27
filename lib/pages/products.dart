import 'dart:convert';

List<Products> productsFromJson(String str) => List<Products>.from(json.decode(str).map((x) => Products.fromJson(x)));

String productsToJson(List<Products> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Products {
    Products({
        required this.id,
        required this.image,
        required this.title,
        required this.price,
        required this.location,
        required this.sellerName,
    });

    int id;
    String image;
    String title;
    String price;
    String location;
    String sellerName;

    factory Products.fromJson(Map<String, dynamic> json) => Products(
        id: json["id"],
        image: json["image"],
        title: json["title"],
        price: json["price"],
        location: json["location"],
        sellerName: json["sellerName"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "image": image,
        "title": title,
        "price": price,
        "location": location,
        "sellerName": sellerName,
    };
}
