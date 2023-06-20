import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:suilic_app/src/config/helpers/chat/get_yes_no_answer.dart';
import 'package:suilic_app/src/domain/entities/chat/message.dart';


class ChatProvider extends ChangeNotifier {
  final GetYesNoAnswer getYesNoAnswer = GetYesNoAnswer();
  final ScrollController chatScrollController = ScrollController();

  List<Message> messagesList = [
    Message(text: '!Hola amor¡', fromwho: FromWhu.me),
    Message(text: 'Ya regresaste del trabajo?', fromwho: FromWhu.me),
  ];

  Future<void> sendMessage(String text) async {
    if (text.isEmpty) return;
    final newMessage = Message(text: text, fromwho: FromWhu.me);
    messagesList.add(newMessage);

    if (text.endsWith('?')) {
      herReply();
    }

    notifyListeners();
    moveScrollToBuuton();
  }

  Future<void> moveScrollToBuuton() async {
    await Future.delayed(const Duration(milliseconds: 100));
    chatScrollController.animateTo(
        chatScrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut);
  }

  Future<void> herReply() async {
    final herMessage = await getYesNoAnswer.getAnswer();

    messagesList.add(herMessage);
    notifyListeners();
    moveScrollToBuuton();
  }
}
