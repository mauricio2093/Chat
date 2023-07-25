import 'package:application_2/domain/entities/message.dart';
import 'package:flutter/material.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> message = [
    Message(text: 'Hola', fromWho: FromWho.me),
    Message(text: 'Ya regresaste del trabajo', fromWho: FromWho.me),
  ];

  Future<void> sendMessage(String text) async {
    // Implementar metodo
  }
}
