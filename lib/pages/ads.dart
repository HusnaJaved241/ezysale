import 'package:another_one/pages/my_ads.dart';
import 'package:flutter/material.dart';

// -------------RAW DATA----------https://raw.githubusercontent.com/HusnaJaved241/demo/3d56f760d71d9d327cf8f9fa4e366c9d7f4c5bfd/db.json
class Ads extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return DefaultTabController(
length: 2,
child: Scaffold(
appBar: AppBar(
  flexibleSpace: new Column(
    mainAxisAlignment: MainAxisAlignment.end,
    children: <Widget>[
      TabBar(
        tabs: [
          Tab(text: "My Ads"),
          Tab(text: "Favorites"),
        ],
      )
    ],
  ),
),
body: TabBarView(
  children: [
    MyAds(),
    MyAds(),
  ],
   ),
   ),
 );
    
  }
}
