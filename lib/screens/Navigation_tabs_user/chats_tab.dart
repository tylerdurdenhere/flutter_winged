import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserChatTabPage extends StatefulWidget {
  const UserChatTabPage();

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
            padding: EdgeInsets.only(
              top: 24,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SizedBox(width: 25),
                    Text(
                      "Chats",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Expanded(
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return chatViewItem(index, isRead: false);
                    },
                    itemCount: 10,
                  ),
                ),
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
        height: 80,
        width: double.infinity,
        margin: EdgeInsets.only(bottom: 2),
        decoration: BoxDecoration(
          color: isRead ? Colors.transparent : Colors.white,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
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
            ),
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
}

class ChatScreen extends StatefulWidget {
  final String username;

  ChatScreen({Key? key, required this.username}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  final TextEditingController _messageController = TextEditingController();

  late Stream<QuerySnapshot> _messagesStream;

  @override
  void initState() {
    super.initState();
    _messagesStream =
        firestore.collection('messages').orderBy('timestamp').snapshots();
  }

  void _sendMessage(String message) {
    firestore.collection('messages').add({
      'text': message,
      'timestamp': DateTime.now(),
    });
    _messageController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 80,
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
      body: Column(
        children: [
          Expanded(
            child: StreamBuilder<QuerySnapshot>(
              stream: _messagesStream,
              builder: (BuildContext context,
                  AsyncSnapshot<QuerySnapshot> snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    itemCount: snapshot.data?.docs.length,
                    itemBuilder: (BuildContext context, int index) {
                      final message = snapshot.data?.docs[index];
                      return ListTile(
                        title: Row(
                          children: [
                            Flexible(
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: (snapshot.hasData) ? 10.0 : 0.0,
                                  right: (snapshot.hasData) ? 0.0 : 10.0,
                                ),
                                child: Container(
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: (snapshot.hasData)
                                        ? Colors.white
                                        : Color.fromARGB(255, 238, 229, 97),
                                    borderRadius: BorderRadius.circular(8),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.2),
                                        offset: Offset(0, 2),
                                        blurRadius: 3,
                                        spreadRadius: 0,
                                      ),
                                    ],
                                  ),
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    message?['text'],
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 5),
                              child: CircleAvatar(
                                radius: 10,
                                backgroundColor: Colors.blueGrey,
                                child: Icon(
                                  Icons.person,
                                  color: Colors.white,
                                  size: 10,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                } else {
                  return Center(child: CircularProgressIndicator());
                }
              },
            ),
          ),
          Container(
            height: 55,
            width: 360,
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
                        controller: _messageController,
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
                          onPressed: () {
                            String message = _messageController.text.trim();
                            if (message.isNotEmpty) {
                              _sendMessage(message);
                            }
                          },
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
          SizedBox(height: 5),
        ],
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<Stream<QuerySnapshot<Object?>>>(
        '_messagesStream', _messagesStream));
  }
}
