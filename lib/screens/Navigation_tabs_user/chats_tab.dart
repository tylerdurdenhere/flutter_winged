// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors, avoid_returning_null_for_void

import 'package:flutter/material.dart';

class UserChatTabPage extends StatefulWidget {
  const UserChatTabPage({super.key});

  @override
  _UserChatTabPageState createState() => _UserChatTabPageState();
}

class _UserChatTabPageState extends State<UserChatTabPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: RefreshIndicator(
          onRefresh: () async {
            // perform the refresh logic here
            return null;
          },
          child: Padding(
            padding: EdgeInsets.only(top: 24, left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 0),
                Text(
                  "Chats",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
                Expanded(
                    child: ListView.builder(
                  itemBuilder: (context, index) {
                    return chatViewItem(index, isRead: false);
                  },
                  itemCount: 10,
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget chatViewItem(int index, {bool isRead = false}) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ChatScreen(
              username: 'Maria Cole',
            ),
          ),
        );
      },
      child: Container(
        height: 100,
        width: 380,
        margin: EdgeInsets.only(top: 6, bottom: 4, right: 20, left: 6),
        decoration: BoxDecoration(
          color: isRead ? Colors.transparent : Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              offset: Offset(0, 2),
              blurRadius: 3,
              spreadRadius: 0,
            ),
          ],
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            prefixIcon(),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text(
                          "Maria Cole",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "May 1, 2022",
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Completed Pre-test in Customer jhbfxih Experience 101",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget prefixIcon() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 25, horizontal: 10),
      child: Container(
        height: 45,
        width: 45,
        padding: EdgeInsets.all(0),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color.fromARGB(80, 204, 204, 204),
        ),
        child: Icon(
          Icons.person_2,
          size: 30,
          color: Color.fromARGB(99, 247, 211, 2),
        ),
      ),
    );
  }
}

class ChatScreen extends StatelessWidget {
  final String username;

  const ChatScreen({Key? key, required this.username}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(12),
          child: CircleAvatar(
            backgroundColor: Colors.black,
            child: IconButton(
              onPressed: () => Navigator.pop(context),
              icon:
                  Icon(Icons.arrow_back_rounded, size: 15, color: Colors.white),
            ),
          ),
        ),
        title: Row(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Spacer(),
            Text(
              "Arnold mcmillan",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            SizedBox(width: 10),
            CircleAvatar(
              backgroundColor: Colors.blueGrey,
              child: Icon(
                Icons.person,
                color: Colors.white,
                size: 25,
              ),
            ),
            SizedBox(width: 10),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  final isSentMessage = index % 2 == 0;

                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: isSentMessage
                          ? MainAxisAlignment.end
                          : MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (!isSentMessage)
                          Padding(
                            padding: EdgeInsets.only(right: 14),
                            child: CircleAvatar(
                              backgroundColor: Colors.blueGrey,
                              child: Icon(
                                Icons.person,
                                color: Colors.white,
                                size: 25,
                              ),
                            ),
                          ),
                        Flexible(
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: isSentMessage ? 10.0 : 0.0,
                              right: isSentMessage ? 0.0 : 10.0,
                            ),
                            child: Container(
                              width: 320,
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: isSentMessage
                                    ? Color.fromARGB(255, 238, 229, 97)
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    offset: Offset(0, 2),
                                    blurRadius: 3,
                                    spreadRadius: 0,
                                  ),
                                ],
                              ),
                              child: Text(
                                'Get the messenger. Come in 10 minutes. uhudihuihuhuh',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                        if (isSentMessage)
                          Padding(
                            padding: EdgeInsets.only(left: 14),
                            child: CircleAvatar(
                              backgroundColor: Colors.black,
                              child: Icon(Icons.person_4_rounded,
                                  color: Colors.white, size: 25),
                            ),
                          )
                      ],
                    ),
                  );
                },
              ),
            ),
            Container(
              height: 55,
              width: 320,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(15)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Material(
                color: Colors.transparent,
                child: Row(
                  children: [
                    Expanded(
                      flex: 8,
                      child: Material(
                        color: Colors.transparent,
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Type a message...',
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      flex: 2,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          width: 55,
                          height: 70,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 238, 229, 97),
                            borderRadius: BorderRadius.horizontal(
                                right: Radius.circular(15)),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.send_rounded,
                                color: Colors.black, size: 30),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
