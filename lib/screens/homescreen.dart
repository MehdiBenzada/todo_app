import 'package:flutter/material.dart';
import 'package:messenger/models/chatpage.dart';
import 'package:messenger/models/favorite_cont.dart';
import 'package:messenger/models/category.dart';
import 'package:messenger/models/user_model.dart';
import 'package:messenger/models/message_model.dart';


class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 222, 61, 50),
        leading: const Icon(Icons.arrow_back),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
      ),
      body: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Container(
              color: const Color.fromARGB(0, 222, 61, 50),
            ),
          ),
          const Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Column(
              children: <Widget>[
                categoryselector(),
                favorite(),
              ],
            ),
          ),
          const Positioned(
            top: 250, // Adjust this value according to your UI
            left: 0,
            right: 0,
            bottom: 0,
            child: chats_page(),
          ),
        ],
      ),
    );
  }
}
