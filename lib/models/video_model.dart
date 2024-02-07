import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoModel {
  final VoidCallback avatarOnpressed;
  final String avatarimage;
  final String name;
  final String time;
  final VoidCallback moreonpressed;
  final String videoposttitle;
  final String? videopostlink;
  final VoidCallback likeonpressed;
  final VoidCallback commentonpressed;
  final VoidCallback shareonpressed;

  VideoModel({
    required this.avatarOnpressed,
    required this.avatarimage,
    required this.name,
    required this.time,
    required this.moreonpressed,
    required this.videoposttitle,
    required this.videopostlink,
    required this.likeonpressed,
    required this.commentonpressed,
    required this.shareonpressed,
  });
}

List<VideoModel> videoData = [
  VideoModel(
    avatarOnpressed: () => print('Avatar Clicked'),
    avatarimage: 'images/02.jpg',
    name: 'Navneet Sheoran',
    time: 'Just Now',
    // ignore: avoid_print
    moreonpressed: () => print('More Clicked'),
    videoposttitle: 'HOW TO INVEST IN STOCKS',
    videopostlink: YoutubePlayer.convertUrlToId('https://youtu.be/3UF0ymVdYLA'),
    // ignore: avoid_print
    likeonpressed: () => print('Like Clicked'),
    commentonpressed: () => print('Comment Clicked'),
    shareonpressed: () => print('Share clicked'),
  ),
];
