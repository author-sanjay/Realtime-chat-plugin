// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  ChatScreen(
      {required this.groupid,
      required this.groupname,
      required this.user,
      super.key});
  String groupid;
  String groupname;
  String user;

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConstrainedBox(
        constraints:
            BoxConstraints(minHeight: MediaQuery.of(context).size.height),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Center( 
              child: Column(
            children: [
              Text(widget.groupid),
              Text(widget.groupname),
              Text(widget.user),
            ],
          )),
        ),
      ),
    );
  }
}
