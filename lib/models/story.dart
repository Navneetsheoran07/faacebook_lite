import 'package:flutter/material.dart';

class StoryModel {
  final VoidCallback onTap;
  final String image;
  final String userName;

  StoryModel({
    required this.onTap,
    required this.image,
    required this.userName,
  });
}

List<StoryModel> storydata = [
  StoryModel(
    userName: 'Jerry',
    // ignore: avoid_print
    onTap: () => print('clicked on jerry photo'),
    image: 'images/01.jpg',
  ),
  StoryModel(
    userName: 'Jerry',
    // ignore: avoid_print
    onTap: () => print('clicked on jerry photo'),
    image: 'images/02.jpg',
  ),
  StoryModel(
    userName: 'Jerry',
    // ignore: avoid_print
    onTap: () => print('clicked on jerry photo'),
    image: 'images/03.jpg',
  ),
  StoryModel(
    userName: 'Jerry',
    // ignore: avoid_print
    onTap: () => print('clicked on jerry photo'),
    image: 'images/04.jpg',
  ),
  StoryModel(
    userName: 'Jerry',
    // ignore: avoid_print
    onTap: () => print('clicked on jerry photo'),
    image: 'images/05.jpg',
  ),
  StoryModel(
    userName: 'Jerry',
    // ignore: avoid_print
    onTap: () => print('clicked on jerry photo'),
    image: 'images/06.jpg',
  ),
  StoryModel(
    userName: 'Jerry',
    // ignore: avoid_print
    onTap: () => print('clicked on jerry photo'),
    image: 'images/07.jpg',
  ),
  StoryModel(
    userName: 'Jerry',
    // ignore: avoid_print
    onTap: () => print('clicked on jerry photo'),
    image: 'images/08.jpg',
  ),
  StoryModel(
    userName: 'Jerry',
    // ignore: avoid_print
    onTap: () => print('clicked on jerry photo'),
    image: 'images/09.jpg',
  )
];
