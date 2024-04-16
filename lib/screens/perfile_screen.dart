import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Menu {
  final String title;
  final Icon icon;
  final Widget trailing;
  Menu({
    required this.title,
    required this.icon,
    required this.trailing,
  });
}

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});
  List<Menu> lstMenu = [
    Menu(
      title: "Order History",
      icon: Icon(Icons.history),
      trailing: Icon(Icons.arrow_forward_ios),
    ),
    Menu(
      title: "Profile",
      icon: Icon(Icons.person),
      trailing: Icon(Icons.arrow_forward_ios),
    ),
    Menu(
      title: "My Courses",
      icon: Icon(Icons.shop),
      trailing: Icon(Icons.arrow_forward_ios),
    ),
    Menu(
      title: "Settings",
      icon: Icon(Icons.settings),
      trailing: Icon(Icons.arrow_forward_ios),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Column(
        children: [
          // profile
          Center(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 80,
                  backgroundImage: NetworkImage(
                      "https://w0.peakpx.com/wallpaper/856/263/HD-wallpaper-noze-icon-in-2022-really-pretty-girl-cute-girl-pic-ulzzang-girl.jpg"),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Nith Apple",
                  style: TextStyle(fontSize: 22),
                ),
                Text(
                  "0123456789",
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  "mario@gmail.com",
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
          ),

          Flexible(
            child: ListView.builder(
              itemCount: lstMenu.length,
              itemBuilder: (context, index) {
                final menu = lstMenu[index];
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.deepOrange.withOpacity(0.5),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: menu.icon,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            menu.title,
                          ),
                        ],
                      ),
                      menu.trailing,
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
