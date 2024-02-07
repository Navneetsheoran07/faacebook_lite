// ignore_for_file: sized_box_for_whitespace, avoid_print, duplicate_ignore

import 'package:faacebook_lite/models/story.dart';
import 'package:flutter/material.dart';

class StoryBar extends StatelessWidget {
  const StoryBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Wrap(
          spacing: 10.0,
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: const Color.fromARGB(255, 0, 0, 0)),
                  borderRadius: BorderRadius.circular(30.0)),
              height: 250,
              width: 150,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  GestureDetector(
                    onTap: () => print('add story is clicked'),
                    child: Column(
                      children: [
                        Container(
                          height: 170,
                          width: 150,
                          margin: const EdgeInsets.only(bottom: 30.0),
                          child: const ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              topRight: Radius.circular(20.0),
                            ),
                            child: Image(
                              image: AssetImage('images/05.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () => {},
                          child: const Text('Add To Story',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                      bottom: 50.0,
                      left: 45.0,
                      child: IconButton(
                        onPressed: () => {},
                        icon: const Icon(Icons.add_circle_rounded),
                        iconSize: 45.0,
                        color: Colors.blue,
                      ))
                ],
              ),
            ),
            // for loop
            for (var i = 0; i < storydata.length; i++) ...[
              Container(
                decoration: BoxDecoration(
                    border:
                        Border.all(color: const Color.fromARGB(255, 0, 0, 0)),
                    borderRadius: BorderRadius.circular(20.0)),
                height: 250,
                width: 150,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    GestureDetector(
                      onTap: () => storydata[i].onTap,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image(
                          image: AssetImage(storydata[i].image),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const Positioned(
                        bottom: 10.0,
                        left: 10.0,
                        child: Text(
                          'Jerry',
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
              ),
            ]
          ],
        ),
      ),
    );
  }
}
