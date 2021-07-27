// import 'products.dart';
// import 'package:http/http.dart' as http;

// class Services {
//   static const String url = "assets/data.json";
//   List<Products> todos = [];

//   static Future<List<Products>> getProducts() async {
//     try {
//       // var url = Uri.parse('https://example.com/whatsit/create');
//       var response = await http.get(Uri.parse(url));
//       if (response.statusCode == 200) {
//         final List<Products> products = productsFromJson(response.body);
//         return products;
//       }
//       else{

//       return List<Products>();
//       }
//     } catch (e) {
//       // ignore: deprecated_member_use
//       return List<Products>();
//     }
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' as rootBundle;
import 'products.dart';

class Services extends StatefulWidget {
  Services({Key? key}) : super(key: key);

  @override
  _ServicesState createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: null,
    );
  }

  
}
