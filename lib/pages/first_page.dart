import 'package:flutter/material.dart';
import 'package:myapp/pages/homepage.dart';
import 'package:myapp/pages/profile_page.dart';
import 'package:myapp/pages/settings.dart';

class FirstPage extends StatefulWidget {
  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  //this keeps track of the current page to display
  int _selectedIndex = 0;

  //this method updates the new selected items
  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //the pages that we have in our app
  final List _pages = [
    //homepage
    Homepage(),

    //profile page
    ProfilePage(),

    //settings page
    Settings(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text(
              "The First Page",
              style: TextStyle(color: Colors.white),
          )),
          backgroundColor: Colors.orange,
        ),
        body: _pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _navigateBottomBar,
            items:[
              //Home
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                label: 'Home'
              ),

              //Profile
              BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'Profile',
              ),

              //Settings
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                label: 'Settings'
              )
            ]

        ),
    );

  }
}
