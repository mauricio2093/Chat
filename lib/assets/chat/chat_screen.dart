import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://i.pinimg.com/564x/93/fd/a3/93fda3c4e69aa32beac71721299c6abe.jpg'),
          ),
        ),
        title: const Text('Avatar Receiver'),
      ),
    );
  }
}
