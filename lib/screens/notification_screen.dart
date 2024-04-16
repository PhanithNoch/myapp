import 'package:flutter/material.dart';

class Notification {
  final String profileUrl;
  final String name;
  final String title;
  final String ago;
  Notification({
    required this.profileUrl,
    required this.name,
    required this.title,
    required this.ago,
  });
}

class NotificationScreen extends StatelessWidget {
  NotificationScreen({super.key});
  // List<Map<String, dynamic>> lstNotifications = [
  //   {
  //     'profile_url':
  //         "https://w0.peakpx.com/wallpaper/856/263/HD-wallpaper-noze-icon-in-2022-really-pretty-girl-cute-girl-pic-ulzzang-girl.jpg",
  //     'name': 'Nith Apple',
  //     'title': "Reacted to your story",
  //     'ago': "1 hour ago"
  //   },
  //   {
  //     'profile_url':
  //         "https://w0.peakpx.com/wallpaper/856/263/HD-wallpaper-noze-icon-in-2022-really-pretty-girl-cute-girl-pic-ulzzang-girl.jpg",
  //     'name': 'Nith Apple',
  //     'title': "Reacted to your story",
  //     'ago': "1 hour ago"
  //   },
  //   {
  //     'profile_url':
  //         "https://w0.peakpx.com/wallpaper/856/263/HD-wallpaper-noze-icon-in-2022-really-pretty-girl-cute-girl-pic-ulzzang-girl.jpg",
  //     'name': 'Nith Apple',
  //     'title': "Reacted to your story",
  //     'ago': "1 hour ago"
  //   },
  //   {
  //     'profile_url':
  //         "https://w0.peakpx.com/wallpaper/856/263/HD-wallpaper-noze-icon-in-2022-really-pretty-girl-cute-girl-pic-ulzzang-girl.jpg",
  //     'name': 'Nith Apple',
  //     'title': "Reacted to your story",
  //     'ago': "1 hour ago"
  //   }
  // ];
  List<Notification> lstNotifications = [
    Notification(
        profileUrl:
            "https://w0.peakpx.com/wallpaper/856/263/HD-wallpaper-noze-icon-in-2022-really-pretty-girl-cute-girl-pic-ulzzang-girl.jpg",
        name: "Nith Apple",
        title: "Reacted to your story",
        ago: "1 hour ago"),
    Notification(
        profileUrl:
            "https://w0.peakpx.com/wallpaper/856/263/HD-wallpaper-noze-icon-in-2022-really-pretty-girl-cute-girl-pic-ulzzang-girl.jpg",
        name: "Nith Apple",
        title: "Reacted to your story",
        ago: "1 hour ago"),
    Notification(
        profileUrl:
            "https://w0.peakpx.com/wallpaper/856/263/HD-wallpaper-noze-icon-in-2022-really-pretty-girl-cute-girl-pic-ulzzang-girl.jpg",
        name: "Nith Apple",
        title: "Reacted to your story",
        ago: "1 hour ago"),
    Notification(
        profileUrl:
            "https://w0.peakpx.com/wallpaper/856/263/HD-wallpaper-noze-icon-in-2022-really-pretty-girl-cute-girl-pic-ulzzang-girl.jpg",
        name: "Nith Apple",
        title: "Reacted to your story",
        ago: "1 hour ago"),
    Notification(
        profileUrl:
            "https://w0.peakpx.com/wallpaper/856/263/HD-wallpaper-noze-icon-in-2022-really-pretty-girl-cute-girl-pic-ulzzang-girl.jpg",
        name: "Nith Apple",
        title: "Reacted to your story",
        ago: "1 hour ago"),
    Notification(
        profileUrl:
            "https://w0.peakpx.com/wallpaper/856/263/HD-wallpaper-noze-icon-in-2022-really-pretty-girl-cute-girl-pic-ulzzang-girl.jpg",
        name: "Nith Apple",
        title: "Reacted to your story",
        ago: "1 hour ago"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
      ),
      body: ListView.builder(
        itemCount: lstNotifications.length,
        itemBuilder: (context, index) {
          final notification = lstNotifications[index];
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(notification.profileUrl),
              ),
              title: Text("${notification.name} ${notification.title}"),
              subtitle: Text("${notification.ago}"),
            ),
          );
        },
      ),
    );
  }
}
