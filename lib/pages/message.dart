// ignore_for_file: sort_child_properties_last

import 'package:faacebook_lite/models/message.dart';
import 'package:flutter/material.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 10.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Message',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Container(
                    child: IconButton(
                      icon: const Icon(
                        Icons.message,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      color: Colors.green,
                      onPressed: () {
                        print('person is clicked');
                      },
                    ),
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(41, 158, 158, 158)),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10.0),
                    child: IconButton(
                      icon: const Icon(
                        Icons.settings,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      color: Colors.red,
                      onPressed: () {
                        print('people is clicked');
                      },
                    ),
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(41, 158, 158, 158)),
                  ),
                ],
              ),
            ],
          ),
        ),
        const Divider(
          thickness: 1,
          color: Colors.black,
        ),
        Expanded(
            child: ListView.builder(
          itemCount: messageData.length,
          itemBuilder: (context, i) => Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.blueGrey,
                  backgroundImage: AssetImage(messageData[i].avatar),
                ),
                title: Text(
                  messageData[i].name,
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text(messageData[i].time),
                trailing: IconButton(
                  iconSize: 20,
                  color: Colors.green,
                  onPressed: () => {},
                  icon: Text(messageData[i].status),
                ),
                onTap: () {
                  print('Open Clicked User Profile');
                },
              )
            ],
          ),
        ))
      ],
    );
  }
}
