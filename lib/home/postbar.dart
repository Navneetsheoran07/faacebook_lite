// ignore_for_file: avoid_print, sized_box_for_whitespace

import 'package:flutter/material.dart';

class Postbar extends StatelessWidget {
  const Postbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconButton(
          iconSize: 30,
          onPressed: () => print('avatar clicked'),
          icon: const CircleAvatar(
            radius: 80.0,
            backgroundImage: AssetImage('images/09.jpg'),
          ),
        ),
        TextButton(
          onPressed: () => {},
          child: Text(
            "what's on your mind?",
            style: TextStyle(fontSize: 18, color: Colors.grey[600]),
          ),
        ),
        Container(
          height: 60,
          child: const VerticalDivider(color: Colors.black87),
        ),
        Column(
          children: [
            IconButton(
              onPressed: () => print('photo is clicked'),
              icon: const Icon(Icons.photo_album_outlined),
            ),
            const Text('Photo')
          ],
        )
      ],
    );
  }
}
