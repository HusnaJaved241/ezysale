import 'package:flutter/material.dart';


class TabBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                // Tab(icon: Icon(Icons.directions_car)),
                // Tab(icon: Icon(Icons.directions_transit)),
                // Tab(icon: Icon(Icons.directions_bike)),
                Tab(child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "My Ads",
                    style: TextStyle(
                     fontSize: 16
                     ),
                     ),
                ),
                ),
                Tab(child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Favourites",
                    style: TextStyle(
                     fontSize: 16
                     ),
                     ),
                ),
                ),
                
                
              ],
            ),
            title: Center(child: Text('My Ads',
            style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  ),
          ),
          body: TabBarView(
            children: [
              Icon(Icons.directions_car),
              Icon(Icons.directions_transit),
            ],
          ),
        ),
      ),
    );
  }
}