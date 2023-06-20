import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:suilic_app/src/domain/entities/chat/message.dart';
import 'package:suilic_app/src/providers/chat/chat_provider.dart';
import 'package:suilic_app/src/widgets/chat/chat/her_message_bubble.dart';
import 'package:suilic_app/src/widgets/chat/chat/my_message_bubble.dart';
import 'package:suilic_app/src/widgets/chat/shared/chat/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://ih1.redbubble.net/image.2480309521.8952/flat,128x,075,f-pad,128x128,f8f8f8.jpg'),
          ),
        ),
        centerTitle: true,
        title: const Text('chat boot'),
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final chatprovider = context.watch<ChatProvider>();
    return SafeArea(
      //left: false,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                controller: chatprovider.chatScrollController,
                itemCount: chatprovider.messagesList.length,
                itemBuilder: (BuildContext context, int index) {
                  final message = chatprovider.messagesList[index];

                  return (message.fromwho == FromWhu.hers)
                      ? HerMessageBubble(message: message)
                      : MyMessageBubble(
                          message: message,
                        );
                },
              ),
            ),
            ////// caja de texto de mensajes
            MessageFieldBox(
              //onValue: (value) => chatprovider.sendMessage(value),
              onValue: chatprovider.sendMessage,
            ),
          ],
        ),
      ),
    );
  }
}
