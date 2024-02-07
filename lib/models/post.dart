import 'package:flutter/material.dart';

class PostModel {
  final VoidCallback avatarOnpressed;
  final String avatarimage;
  final String name;
  final String time;
  final VoidCallback moreOnPressed;
  final String postTitle;
  final String postImage;
  final VoidCallback likeOnPressed;
  final VoidCallback commentOnpressed;
  final VoidCallback shareOnPressed;

  PostModel({
    required this.avatarOnpressed,
    required this.avatarimage,
    required this.name,
    required this.time,
    required this.moreOnPressed,
    required this.postTitle,
    required this.postImage,
    required this.likeOnPressed,
    required this.commentOnpressed,
    required this.shareOnPressed,
  });
}

List<PostModel> postData = [
  PostModel(
    avatarOnpressed: () => print('avatar clicked'),
    avatarimage: 'images/06.jpg',
    name: 'Beach',
    time: 'Just Now',
    // ignore: avoid_print
    moreOnPressed: () => print('more clicked'),
    postTitle: 'goa beach',
    postImage: 'images/01.jpg',
    // ignore: avoid_print
    likeOnPressed: () => print('like button is clicked'),
    // ignore: avoid_print
    commentOnpressed: () => print('comment button is clicked'),
    // ignore: avoid_print
    shareOnPressed: () => print('comment button is clicked'),
  ),
  PostModel(
    avatarOnpressed: () => print('avatar clicked'),
    avatarimage: 'images/06.jpg',
    name: 'Beach',
    time: 'Just Now',
    // ignore: avoid_print
    moreOnPressed: () => print('more clicked'),
    postTitle: 'goa beach',
    postImage: 'images/02.jpg',
    // ignore: avoid_print
    likeOnPressed: () => print('like button is clicked'),
    // ignore: avoid_print
    commentOnpressed: () => print('comment button is clicked'),
    // ignore: avoid_print
    shareOnPressed: () => print('comment button is clicked'),
  ),
  PostModel(
    avatarOnpressed: () => print('avatar clicked'),
    avatarimage: 'images/06.jpg',
    name: 'Beach',
    time: 'Just Now',
    // ignore: avoid_print
    moreOnPressed: () => print('more clicked'),
    postTitle: 'goa beach',
    postImage: 'images/03.jpg',
    // ignore: avoid_print
    likeOnPressed: () => print('like button is clicked'),
    // ignore: avoid_print
    commentOnpressed: () => print('comment button is clicked'),
    // ignore: avoid_print
    shareOnPressed: () => print('comment button is clicked'),
  ),
  PostModel(
    avatarOnpressed: () => print('avatar clicked'),
    avatarimage: 'images/06.jpg',
    name: 'Beach',
    time: 'Just Now',
    // ignore: avoid_print
    moreOnPressed: () => print('more clicked'),
    postTitle: 'goa beach',
    postImage: 'images/04.jpg',
    // ignore: avoid_print
    likeOnPressed: () => print('like button is clicked'),
    // ignore: avoid_print
    commentOnpressed: () => print('comment button is clicked'),
    // ignore: avoid_print
    shareOnPressed: () => print('comment button is clicked'),
  ),
  PostModel(
    avatarOnpressed: () => print('avatar clicked'),
    avatarimage: 'images/06.jpg',
    name: 'Beach',
    time: 'Just Now',
    // ignore: avoid_print
    moreOnPressed: () => print('more clicked'),
    postTitle: 'goa beach',
    postImage: 'images/05.jpg',
    // ignore: avoid_print
    likeOnPressed: () => print('like button is clicked'),
    // ignore: avoid_print
    commentOnpressed: () => print('comment button is clicked'),
    // ignore: avoid_print
    shareOnPressed: () => print('comment button is clicked'),
  ),
  PostModel(
    avatarOnpressed: () => print('avatar clicked'),
    avatarimage: 'images/06.jpg',
    name: 'Beach',
    time: 'Just Now',
    // ignore: avoid_print
    moreOnPressed: () => print('more clicked'),
    postTitle: 'goa beach',
    postImage: 'images/06.jpg',
    // ignore: avoid_print
    likeOnPressed: () => print('like button is clicked'),
    // ignore: avoid_print
    commentOnpressed: () => print('comment button is clicked'),
    // ignore: avoid_print
    shareOnPressed: () => print('comment button is clicked'),
  ),
  PostModel(
    avatarOnpressed: () => print('avatar clicked'),
    avatarimage: 'images/06.jpg',
    name: 'Beach',
    time: 'Just Now',
    // ignore: avoid_print
    moreOnPressed: () => print('more clicked'),
    postTitle: 'goa beach',
    postImage: 'images/07.jpg',
    // ignore: avoid_print
    likeOnPressed: () => print('like button is clicked'),
    // ignore: avoid_print
    commentOnpressed: () => print('comment button is clicked'),
    // ignore: avoid_print
    shareOnPressed: () => print('comment button is clicked'),
  ),
  PostModel(
    avatarOnpressed: () => print('avatar clicked'),
    avatarimage: 'images/06.jpg',
    name: 'Beach',
    time: 'Just Now',
    // ignore: avoid_print
    moreOnPressed: () => print('more clicked'),
    postTitle: 'goa beach',
    postImage: 'images/08.jpg',
    // ignore: avoid_print
    likeOnPressed: () => print('like button is clicked'),
    // ignore: avoid_print
    commentOnpressed: () => print('comment button is clicked'),
    // ignore: avoid_print
    shareOnPressed: () => print('comment button is clicked'),
  ),
  PostModel(
    avatarOnpressed: () => print('avatar clicked'),
    avatarimage: 'images/06.jpg',
    name: 'Beach',
    time: 'Just Now',
    // ignore: avoid_print
    moreOnPressed: () => print('more clicked'),
    postTitle: 'goa beach',
    postImage: 'images/09.jpg',
    // ignore: avoid_print
    likeOnPressed: () => print('like button is clicked'),
    // ignore: avoid_print
    commentOnpressed: () => print('comment button is clicked'),
    // ignore: avoid_print
    shareOnPressed: () => print('comment button is clicked'),
  ),
];
