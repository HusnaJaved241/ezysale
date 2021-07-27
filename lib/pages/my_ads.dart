import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter/services.dart' as rootBundle;

import 'products.dart';

class MyAds extends StatefulWidget {
  @override
  _MyAdsState createState() => _MyAdsState();
}

class _MyAdsState extends State<MyAds> {
  final myProducts = List<String>.generate(1000, (i) => 'Product $i');

  @override
  Widget build(BuildContext context) {
    final productTitle = [
      'Corvette',
      'Lamborgini',
      'Land Cruiser',
      'McLaren',
      'Mercedes',
      'Rolls Royce',
      'Spirit of Ecstasy',
      'Tesla Model S'
    ];
    
return Scaffold(
  
  body: Container(
        // Use ListView.builder
  child: Row(
    children: [
      SizedBox(height: 20),
      Expanded(
        child: ListView.builder(
          // the number of items in the list
          itemCount: productTitle.length,

          // display each item of the product list
          itemBuilder: (context, index) {
            return Column(
            children:[
              adsCard("assets/products/mac.jpg", "MacBook Air", 70000,
          ),
              adsCard("assets/products/bike.jpg", "Honda", 570000,
              ),
              adsCard("assets/products/land-cruiser.jpg", "Land Cruiser",
                  590000),
              adsCard("assets/products/bike1.jpg", "Honda 125", 450000,
              ),
              adsCard("assets/products/dslr.jpg", "Nikon DSLR Camera", 970000,
              ),
              adsCard("assets/products/mac1.jpg", "MacBook Pro",
                  1170000),
              adsCard("assets/products/rolls-royce.jpg", "Rolls Royce", 970000,
              ),
            ]
          );
            
          },
        ),
      ),
    ],
  ),
      ),
);
  }

  Widget adsCard(String path, String title, int price) {
    return Card(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 2),
              elevation: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 1, horizontal: 2),
                child: Row(

                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.33,
                      child: Image.asset(
                        path,
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(width: 12,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10),
                        // for (var i = 0; i < productTitle.length; i++) {},
                        Text(
                          title,
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Rs $price",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(DateFormat.yMMMd().format(DateTime.now()),
                        style: TextStyle(
                            fontSize: 17,
                          ),
                          ),
                      ],
                    ),
                  ],
                ),
              ),
            );
  }
}
