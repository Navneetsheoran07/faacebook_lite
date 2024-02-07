import 'package:faacebook_lite/home/menu.dart';
import 'package:faacebook_lite/home/post.dart';
import 'package:faacebook_lite/home/postbar.dart';
import 'package:faacebook_lite/home/storybar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 8.0),
      child: ListView(
        children: const [
          Postbar(),
          Divider(
            thickness: 1,
            color: Colors.black12,
          ),
          MenuBars(),
          Divider(
            thickness: 6,
            color: Colors.black12,
          ),
          StoryBar(),
          Divider(
            thickness: 6,
            color: Colors.black12,
          ),
          Post(),
        ],
      ),
    );
  }
}
