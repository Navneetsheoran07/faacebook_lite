// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:faacebook_lite/models/friends.dart';

class FriendsPage extends StatefulWidget {
  const FriendsPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _FriendsPageState createState() => _FriendsPageState();
}

class _FriendsPageState extends State<FriendsPage> {
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
                'Friends',
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
                        Icons.person,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      color: Colors.black,
                      onPressed: () {
                        print('person is clicked');
                      },
                    ),
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(41, 158, 158, 158)),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10.0),
                    // ignore: sort_child_properties_last
                    child: IconButton(
                      icon: const Icon(
                        Icons.people,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      //color: Colors.red,
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
          itemCount: friendsData.length,
          itemBuilder: (context, i) => Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.blueGrey,
                  backgroundImage: AssetImage(friendsData[i].avatar),
                ),
                title: Text(
                  friendsData[i].name,
                  style: TextStyle(fontSize: 20),
                ),
                trailing: Wrap(
                  spacing: 12,
                  children: [
                    TextButton(
                      onPressed: () => {print('friend request is send')},
                      child: const Text('Add Friends'),
                      style: TextButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.blue,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 10.0),
                          textStyle: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                    ),
                    TextButton(
                      onPressed: () => {print('Friends Remove')},
                      child: const Text('Remove'),
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.grey[400],
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10.0,
                          vertical: 10.0,
                        ),
                        textStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
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
