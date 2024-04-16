import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 53,
                backgroundColor: Colors.pink.withOpacity(0.6),
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRu0QFzDvl3GD2mnk7El_sl31Oo5LpLtQ24p9TbeTYQkMl6ke6RJp1goHikeWvOGW_bFIE&usqp=CAU"),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Lixa lopez",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  Text("lixa@gmail.com", style: TextStyle(fontSize: 18)),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),

          // setting section
          Column(
            children: [
              Card(
                color: Colors.white,
                child: ListTile(
                  leading: Icon(Icons.settings),
                  title: Text(
                    "General Settings",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text("Privacy, security, change password"),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
              Card(
                color: Colors.white,
                child: ListTile(
                  leading: Icon(Icons.settings),
                  title: Text(
                    "Privacy",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text("Account, last seen, profile photo"),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
              Card(
                color: Colors.white,
                child: ListTile(
                  leading: Icon(Icons.settings),
                  title: Text(
                    "Privacy",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text("Account, last seen, profile photo"),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
              Card(
                color: Colors.white,
                child: ListTile(
                  leading: Icon(Icons.settings),
                  title: Text(
                    "Privacy",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text("Account, last seen, profile photo"),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
              Card(
                color: Colors.white,
                child: ListTile(
                  leading: Icon(Icons.settings),
                  title: Text(
                    "Privacy",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text("Account, last seen, profile photo"),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
