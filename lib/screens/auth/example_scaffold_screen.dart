import 'package:counter_app/screens/notification_screen.dart';
import 'package:counter_app/screens/post_screen.dart';
import 'package:flutter/material.dart';

import '../perfile_screen.dart';
import '../setting_screen.dart';

class ExampleScaffoldScreen extends StatefulWidget {
  ExampleScaffoldScreen({super.key});

  @override
  State<ExampleScaffoldScreen> createState() => _ExampleScaffoldScreenState();
}

class _ExampleScaffoldScreenState extends State<ExampleScaffoldScreen> {
  int selectedIndex = 0;
  List lstScreens = [
    PostScreen(),
    NotificationScreen(),
    ProfileScreen(),
    SettingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://img.freepik.com/premium-photo/cute-asian-girl-pink_836063-183.jpg'),
              ),
              accountName: Text("Nith apple"),
              accountEmail: Text('mario@gmail.com'),
              currentAccountPictureSize: Size.square(40),
            ),
            ListTile(
              onTap: () {
                print("Tapped");
              },
              leading: Icon(Icons.person),
              title: Text("Profile"),
              subtitle: Text("View your profile"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              onTap: () {
                print("Tapped");
              },
              leading: Icon(Icons.shop),
              title: Text("My Courses"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              onTap: () {
                print("Tapped");
              },
              leading: Icon(Icons.notifications),
              title: Text("Notifications"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              onTap: () {
                print("Tapped");
              },
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            Spacer(),
            ListTile(
              onTap: () {
                print("Tapped");
              },
              leading: Icon(Icons.logout),
              title: Text("Logout"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ],
        ),
      ),
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: Text('Example 1'),
      //   actions: [
      //     IconButton(
      //       onPressed: () {
      //         // code to do action
      //       },
      //       icon: Icon(Icons.notifications),
      //     ),
      //     IconButton(
      //       onPressed: () {
      //         // code to do action
      //       },
      //       icon: Icon(Icons.person),
      //     ),
      //   ],
      // ),

      /// ListView, List.builder, SingleChildScrollView
      body: lstScreens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          print("index: $index");
          selectedIndex = index;
          setState(() {});
        },
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: "Notifications"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
        ],
      ),
    );
  }
}

//1. AppBar
//2 Body
//3 BottomNavigationBar
//4 FloatingActionButton
//5 Drawer
