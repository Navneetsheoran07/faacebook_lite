// ignore_for_file: sort_child_properties_last, prefer_interpolation_to_compose_strings

import 'package:faacebook_lite/models/notification.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
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
                'Notification',
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
                        Icons.check_circle,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      tooltip: 'Mark All Read',
                      onPressed: () {
                        print('person is clicked');
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
          itemCount: notificationData.length,
          itemBuilder: (context, i) => Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.blueGrey,
                  backgroundImage: AssetImage(notificationData[i].avatar),
                ),
                title: Text(
                  notificationData[i].name +
                      '' +
                      notificationData[i].description,
                  style: const TextStyle(fontSize: 20),
                ),
                subtitle: Text(notificationData[i].time),
                trailing: IconButton(
                  iconSize: 20,
                  color: Colors.green,
                  onPressed: () => {},
                  icon: const Icon(Icons.more_vert_outlined),
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
