import 'package:flutter/material.dart';
import 'dashboard.dart';
import 'chat.dart';
import 'ads.dart';
import 'profile.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
// static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  final List<Widget> screens = [Dashboard(), chat(), Ads(), profile()];
  int currentTab = 0;
  String appbarTitleString = "Home";
  static const TextStyle optionStyle =
TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white);
  var appBarTitleText = Text("Home", style: optionStyle);
  Widget currentScreen = Dashboard(); //initial screen in view port

  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: appBarTitleText,
        ),
      ),
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Colors.blue,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 60,
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,F
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  
                children: [
                  MaterialButton(
                    onPressed: () {
                      _onItemTapped(0);
                      currentScreen = Dashboard();
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.home,
                          color: currentTab == 0 ? Colors.blue : Colors.grey,
                        ),
                        Text(
                          'Home',
                          style: TextStyle(
                              color:
                                  currentTab == 0 ? Colors.blue : Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      _onItemTapped(1);
                      currentScreen = chat();

                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.chat,
                          color: currentTab == 1 ? Colors.blue : Colors.grey,
                        ),
                        Text('Chat',
                            style: TextStyle(
                                color: currentTab == 1
                                    ? Colors.blue
                                    : Colors.grey))
                      ],
                    ),
                  ),
                  Container(
                    width: 8,
                  ),
                  MaterialButton(
                    //minWidth: 60,
                   onPressed: () {
                      _onItemTapped(2);
                      currentScreen = Ads();

                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.ad_units,
                          color: currentTab == 2 ? Colors.blue : Colors.grey,
                        ),
                        Text(
                          'My Ads',
                          style: TextStyle(
                              color:
                                  currentTab == 2 ? Colors.blue : Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    //minWidth: 60,
                    onPressed: () {
                      _onItemTapped(3);
                       currentScreen = profile();

                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.person,
                          color: currentTab == 3 ? Colors.blue : Colors.grey,
                        ),
                        Text('Account',
                            style: TextStyle(
                                color: currentTab == 3
                                    ? Colors.blue
                                    : Colors.grey))
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      currentTab = index;
      if (index == 0) {
        appbarTitleString = "Home";
        appBarTitleText = new Text(appbarTitleString);
      } else if (index == 1) {
        appbarTitleString = "Chat";
        appBarTitleText = new Text(appbarTitleString);
      } else if (index == 2) {
        appbarTitleString = "Ads";
        appBarTitleText = new Text(appbarTitleString);
      }
    else if (index == 3) {
        appbarTitleString = "Profile";
        appBarTitleText = new Text(appbarTitleString);
      }
    });
  }
}
