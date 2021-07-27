import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  String path = "assets/products/product.jpg";
  //  dynamic Dashboard(this.title);
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

  // finalString title = "Home";
  // Dashboard(this.title);
  // final myProducts = List<String>.generate(1000, (i) => 'Product $i');
  String title = "";

  Widget searchBar(String label) {
    return Container(
      width: MediaQuery.of(context).size.width - 15,
      height: 45,
      child: TextFormField(
        // textAlign: TextAlign.center,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 17,
        ),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.zero, // in order to center vertically
          hintText: label,
          prefixIcon: Icon(Icons.search),
          hintStyle: const TextStyle(
            color: Colors.grey,
            fontSize: 19,
            // height: 3
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              width: 2,
              color: Colors.blue,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              width: 1,
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }

  Widget adsCard(String path, String title, String sellerName, String location,
      int price) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
      elevation: 5,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // SizedBox(width: 10),
            Image(
              image: AssetImage(
                path.toString(),
              ),
              // height: 250,
              // width: 250,
            ),
            Column(
              children: [
                SizedBox(height: 5),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "Rs $price",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
                SizedBox(height: 5),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(width: 20),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.blue,
                        ),
                        SizedBox(height: 5),
                        Text(location, style: TextStyle(fontSize: 17)),
                      ],
                    ),
                    // Text(DateFormat.yMMMd().format(date), style: TextStyle(fontSize: 17)),
                    SizedBox(width: 30),
                    Text(sellerName, style: TextStyle(fontSize: 17)),
                    SizedBox(width: 40),

                    Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // final productImages = () {
  //   for (var i = 0; i < path.length; i++) {

  //   }
  // }
  @override
  Widget build(BuildContext context) {
    // var date = DateTime.now();

    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 10),
            searchBar("Search..."),
            SizedBox(height: 10),
            Expanded(
              child: LayoutBuilder(builder: (context, constraints) {
                return GridView.builder(
                  // the number of items in the list
                  itemCount: 7,
                  // crossAxisCount: constraints.maxWidth > 700 ? 4 : 1,
                  // childAspectRatio: 5,

                  // display each item of the product list
                  itemBuilder: (context, index) {
                    return Column(children: [
                      adsCard(
                        "assets/products/mac.jpg",
                        "MacBook Air",
                        "Ali Hassan",
                        "Karachi",
                        70000,
                      ),
                      adsCard(
                        "assets/products/dslr.jpg",
                        "Nikon DSLR Camera",
                        "Saad",
                        "Murree",
                        970000,
                      ),
                      adsCard(
                        "assets/products/bike.jpg",
                        "Honda",
                        "Hassan",
                        "Rawalpindi",
                        570000,
                      ),
                      adsCard("assets/products/land-cruiser.jpg",
                          "Land Cruiser", "Husna", "Mianwali", 590000),
                      adsCard(
                        "assets/products/bike1.jpg",
                        "Honda 125",
                        "Hammad",
                        "Gujranwala",
                        450000,
                      ),
                      adsCard("assets/products/mac1.jpg", "MacBook Pro", "Moiz",
                          "Naran", 1170000),
                      adsCard(
                        "assets/products/rolls-royce.jpg",
                        "Rolls Royce",
                        "Umar",
                        "Lahore",
                        970000,
                      ),
                    ]);
                  },
                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: constraints.maxWidth > 700 ? 4 : 1,
                    childAspectRatio: 5,
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
