import 'package:flutter/material.dart';

class PostScreen extends StatelessWidget {
  PostScreen({super.key});
  List<Map<String, dynamic>> lstPosts = [
    {
      "caption": "Lorem Ipsum is simply dummy text of the printing and typeset"
          "ting industry. ",
      "profile_url": "",
      "name": "Jonhson",
      "photo":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQV7TuscVQSNyu9aYib5AAJ6utcSZaVM2GNvN2TY3hAiw&s"
    },
    {
      "caption": "Lorem Ipsum is simply dummy text of the printing and typeset"
          "ting industry. ",
      "profile_url": "",
      "name": "Jonhson",
      "photo":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3HknEsG_kuI58k0JsAYkWOf_E6k38zrfXZs8WXj3nfA&s"
    },
    {
      "caption": "Lorem Ipsum is simply dummy text of the printing and typeset"
          "ting industry. ",
      "profile_url": "",
      "name": "Jonhson",
      "photo":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQV7TuscVQSNyu9aYib5AAJ6utcSZaVM2GNvN2TY3hAiw&s"
    },
    {
      "caption": "Lorem Ipsum is simply dummy text of the printing and typeset"
          "ting industry. ",
      "profile_url": "",
      "name": "Jonhson",
      "photo":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQV7TuscVQSNyu9aYib5AAJ6utcSZaVM2GNvN2TY3hAiw&s"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: lstPosts.length,
      itemBuilder: (context, index) {
        final post = lstPosts[index];
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  CircleAvatar(
                    child: Text('A'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("${post['name']}")
                ],
              ),
            ),
            // add widget to display a photo
            Image.network(
              "${post['photo']}",
              fit: BoxFit.cover,
              width: double.infinity,
            )
          ],
        );
      },
    );
  }
}
