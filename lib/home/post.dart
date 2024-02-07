import 'package:faacebook_lite/models/post.dart';
import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  const Post({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext) {
    return Container(
        child: Column(
      children: [
        for (var i = 0; i < postData.length; i++) ...[
          Row(
            children: [
              IconButton(
                iconSize: 60,
                onPressed: () => {},
                icon: CircleAvatar(
                  radius: 80.0,
                  backgroundImage: AssetImage(postData[i].avatarimage),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      postData[i].name,
                      style: const TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Wrap(
                      spacing: 10.0,
                      children: [
                        Text(
                          postData[i].time,
                          style: const TextStyle(fontSize: 18.0),
                        ),
                        const Icon(Icons.public)
                      ],
                    )
                  ],
                ),
              ),
              IconButton(
                  iconSize: 30.0,
                  onPressed: postData[i].moreOnPressed,
                  icon: const Icon(Icons.more_horiz_outlined))
            ],
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    postData[i].postTitle,
                    style: const TextStyle(fontSize: 18.0, color: Colors.black),
                  ),
                ),
                Image(image: AssetImage(postData[i].postImage))
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: postData[i].likeOnPressed,
                    icon: const Icon(Icons.thumb_up_outlined),
                  ),
                  const Text(
                    '52k',
                    style: TextStyle(fontSize: 18.0),
                  ),
                ],
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: postData[i].commentOnpressed,
                    icon: const Icon(Icons.message_outlined),
                  ),
                  const Text(
                    '46',
                    style: TextStyle(fontSize: 18.0),
                  ),
                ],
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: postData[i].shareOnPressed,
                    icon: const Icon(Icons.share_outlined),
                  ),
                  const Text(
                    '46',
                    style: TextStyle(fontSize: 18.0),
                  ),
                ],
              ),
            ],
          ),
        ]
      ],
    ));
  }
}
