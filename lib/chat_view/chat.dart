import 'package:flutter/material.dart';

class Chat {
  final String name;
  final String message;
  final String time;
  final String image;
  final bool isVerified;

  Chat({
    required this.name,
    required this.message,
    required this.time,
    required this.image,
    this.isVerified = false,
  });
}

class ChatList extends StatelessWidget {
  final List<Chat> chats = [
    Chat(name: 'Jerina ', message: 'Hi, how are you?', time: '10:30 AM', image: 'https://plus.unsplash.com/premium_photo-1674055048374-522af7933695?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTl8fGdpcmx8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60', isVerified: true),
    Chat(name: ' Smitha ', message: 'I\'m doing great, thanks!', time: '11:00 AM', image: 'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjh8fGdpcmx8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'),
    Chat(name: 'Bobyy ', message: 'What are you up to today?', time: '11:30 AM', image: 'https://images.unsplash.com/photo-1599842057874-37393e9342df?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80', isVerified: true),
    Chat(name: 'Alice ', message: 'Not much, just hanging out at home.', time: '12:00 PM', image: 'https://images.unsplash.com/photo-1562003389-902303a38425?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1562&q=80'),
    Chat(name: 'Jickline ', message: 'Hi, how are you?', time: '10:30 AM', image: 'https://plus.unsplash.com/premium_photo-1674055048374-522af7933695?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTl8fGdpcmx8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'),
    Chat(name: 'gitrue ' , message: 'I\'m doing great, thanks!', time: '11:00 AM', image: 'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjh8fGdpcmx8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) {
          final chat = chats[index];
          return Card(
            child: ListTile(
              leading: CircleAvatar(

                backgroundImage: NetworkImage(chat.image),
              ),
              title: Row(
                children: [
                  Text(chat.name, style: TextStyle(fontWeight: FontWeight.bold)),
                  if (chat.isVerified)
                    Icon(Icons.check_circle, color: Colors.blue, size: 16),
                ],
              ),
              trailing: Text(chat.time),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(chat.message),
                  SizedBox(height: 5),
                ],
              ),
              onTap: () {
                // do something when the chat is tapped
              },
            ),
          );
        },
      ),
    );
  }
}
