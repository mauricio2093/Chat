import 'package:flutter/material.dart';

import 'package:application_2/presentation/widgets/chat/her_message_bubble.dart';
import 'package:application_2/presentation/widgets/chat/my_message_bubble.dart';
import 'package:application_2/presentation/widgets/shared/message_field_box.dart';

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
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return (index % 2 == 0)
                      ? const HerMessageBubble()
                      : const MyMessageBubble();
                },
              ),
            ),

            /// Caja de texto de mensaje
            const MessageFieldBox(),
          ],
        ),
      ),
    );
  }
}
