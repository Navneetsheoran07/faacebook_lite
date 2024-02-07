// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:faacebook_lite/home/menu.dart';
import 'package:faacebook_lite/home/post.dart';
import 'package:faacebook_lite/home/postbar.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class profilepage extends StatelessWidget {
  const profilepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Facebook',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Row(children: [
              IconButton(
                onPressed: () => {Navigator.of(context).pop()},
                icon: Icon(Icons.arrow_back),
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
              ),
              const Text('Navneet Sheoran'),
            ]),
          ),
          body: ListView(
            children: [
              Container(
                height: 255,
                width: 400,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    GestureDetector(
                      onTap: () => {},
                      child: Column(children: [
                        Container(
                          height: 170,
                          width: 400,
                          margin: const EdgeInsets.only(top: 10.0),
                          child: const ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                            child: Image(
                              image: AssetImage('images/06.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        )
                      ]),
                    ),
                    Positioned(
                      bottom: 10.0,
                      left: 140.0,
                      child: Container(
                        height: 120,
                        width: 120,
                        child: const ClipRRect(
                          borderRadius: BorderRadius.all(
                            Radius.circular(150),
                          ),
                          child: Image(
                            image: AssetImage('images/08.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: const Text(
                  'Navneet sheoran',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () => {},
                      child: Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Icon(Icons.add_circle),
                          const Text('Add to Story')
                        ],
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () => {},
                      child: Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Icon(Icons.edit, color: Colors.black),
                          const Text(
                            'Edit Profile',
                            style: TextStyle(color: Colors.black),
                          )
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[400],
                      ),
                    ),
                    IconButton(
                        onPressed: () => {}, icon: Icon(Icons.more_horiz))
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Icon(Icons.book),
                        const Text(
                          'Devloper at thinkNext ',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 10.0),
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Icon(Icons.gamepad),
                        const Text(
                          'Single',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                    child: Row(
                      children: const [
                        Icon(Icons.info),
                        Text(
                          'About',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Friends'),
                      TextButton(
                          onPressed: () => {}, child: Text('Find Friends'))
                    ]),
              ),
              Divider(
                thickness: 1,
                color: Colors.black38,
              ),
              Postbar(),
              MenuBars(),
              Post(),
            ],
          )),
    );
  }
}
