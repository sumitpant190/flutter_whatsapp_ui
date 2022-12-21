import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_clone/info.dart';
import 'package:flutter_whatsapp_clone/widgets/my_message_card.dart';
import 'package:flutter_whatsapp_clone/widgets/sender_message_card.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context, index) {
        if (messages[index]['isMe'] == true) {
          //My message -> card
          return MyMessageCard(
              message: messages[index]['text'].toString(),
              date: messages[index]['time'].toString());
        }
        //Sender message -> card

        return SenderMessageCard(
            message: messages[index]['text'].toString(),
            date: messages[index]['time'].toString());
      },
    );
  }
}
