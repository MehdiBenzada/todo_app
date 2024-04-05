import 'package:flutter/material.dart';
import 'package:messenger/models/message_model.dart';
import 'package:messenger/models/user_model.dart';

class Chat extends StatefulWidget {
  final User user;
  const Chat({Key? key, required this.user}) : super(key: key);

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  chatbuilder(Message message, bool isme) {
    final isliked = message.isLiked;
    final Padding msg = Padding(
        padding: isme
            ? const EdgeInsets.only(left: 50.0, right: 0, top: 8, bottom: 8)
            : const EdgeInsets.only(left: 0.0, right: 9, top: 8, bottom: 8),
        child: Container(
          width: MediaQuery.of(context).size.width * .86,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: isme
                  ? Colors.amber[50]
                  : const Color.fromARGB(130, 243, 132, 124),
              borderRadius: isme
                  ? const BorderRadius.only(
                      topLeft: Radius.circular(30),
                      bottomLeft: Radius.circular(30))
                  : const BorderRadius.only(
                      topRight: Radius.circular(30),
                      bottomRight: Radius.circular(30))),
          child: Padding(
            padding:
                const EdgeInsets.only(left: 13, right: 0, top: 8, bottom: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  message.time,
                ),
                Text(message.text),
              ],
            ),
          ),
        ));
    if (isme) return msg;
    return Row(
      children: [
        msg,
        isliked
            ? const Icon(
                Icons.favorite_border,
                size: 30,
                color: Colors.grey,
              )
            : const Icon(
                Icons.favorite_sharp,
                color: Colors.red,
                size: 30,
              ),
        const SizedBox(
          width: 10,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          widget.user.name,
          style: const TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_horiz,
                color: Colors.black,
              ))
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40), topRight: Radius.circular(40))),
        child: Column(children: [
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 700,
            width: double.infinity,
            child: ListView.builder(
              reverse: true,
              itemCount: messages.length,
              itemBuilder: (BuildContext context, int index) {
                final message = messages[index];

                bool isme = message.sender.id == currentUser.id;
                return chatbuilder(message, isme);
              },
            ),
          ),
        ]),
      ),
    );
  }
}
