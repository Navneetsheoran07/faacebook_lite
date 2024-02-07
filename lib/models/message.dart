import 'package:flutter/material.dart';

class MessageModel {
  final String name;
  final String time;
  final String avatar;
  final String status;

  MessageModel({
    required this.name,
    required this.time,
    required this.avatar,
    required this.status,
  });

  static Icon stausOnline = const Icon(
    Icons.phone_android_outlined,
    size: 18,
    color: Colors.green,
  );

  static Icon stausoffline = const Icon(
    Icons.phone_android_outlined,
    size: 18,
    color: Colors.black38,
  );
}

List<MessageModel> messageData = [
  MessageModel(
    name: 'Navneet Sheoran',
    time: '10:25',
    avatar: 'images/05.jpg',
    status: 'MessageModel.stausOnline',
  ),
  MessageModel(
    name: 'Vikash',
    time: '11:45',
    avatar: 'images/06.jpg',
    status: 'MessageModel.stausoffline',
  ),
  MessageModel(
    name: 'Navneet sheoran',
    time: '10:25',
    avatar: 'images/05.jpg',
    status: 'MessageModel.stausOnline',
  ),
  MessageModel(
    name: 'Amandeep',
    time: '11:45',
    avatar: 'images/06.jpg',
    status: 'MessageModel.stausoffline',
  ),
  MessageModel(
    name: 'Rahul',
    time: '10:25',
    avatar: 'images/05.jpg',
    status: 'MessageModel.stausOnline',
  ),
  MessageModel(
    name: 'Dinesh',
    time: '11:45',
    avatar: 'images/06.jpg',
    status: 'MessageModel.stausoffline',
  ),
  MessageModel(
    name: 'Pooja',
    time: '10:25',
    avatar: 'images/05.jpg',
    status: 'MessageModel.stausOnline',
  ),
  MessageModel(
    name: 'Varshu',
    time: '11:45',
    avatar: 'images/06.jpg',
    status: 'MessageModel.stausoffline',
  ),
  MessageModel(
    name: 'kuldeep',
    time: '10:25',
    avatar: 'images/05.jpg',
    status: 'MessageModel.stausOnline',
  ),
  MessageModel(
    name: 'Monu',
    time: '11:45',
    avatar: 'images/06.jpg',
    status: 'MessageModel.stausoffline',
  ),
  MessageModel(
    name: 'Ajit',
    time: '10:25',
    avatar: 'images/05.jpg',
    status: 'MessageModel.stausOnline',
  ),
  MessageModel(
    name: 'Pardeep',
    time: '11:45',
    avatar: 'images/06.jpg',
    status: 'MessageModel.stausoffline',
  ),
  MessageModel(
    name: 'karan',
    time: '10:25',
    avatar: 'images/05.jpg',
    status: 'MessageModel.stausOnline',
  ),
  MessageModel(
    name: 'Komal',
    time: '11:45',
    avatar: 'images/06.jpg',
    status: 'MessageModel.stausoffline',
  ),
  MessageModel(
    name: 'Jass',
    time: '10:25',
    avatar: 'images/05.jpg',
    status: 'MessageModel.stausOnline',
  ),
  MessageModel(
    name: 'deep',
    time: '11:45',
    avatar: 'images/06.jpg',
    status: 'MessageModel.stausoffline',
  ),
  MessageModel(
    name: 'Rajesh',
    time: '10:25',
    avatar: 'images/05.jpg',
    status: 'MessageModel.stausOnline',
  ),
  MessageModel(
    name: 'Harnoor Singh',
    time: '11:45',
    avatar: 'images/06.jpg',
    status: 'MessageModel.stausoffline',
  ),
  MessageModel(
    name: 'raju',
    time: '10:25',
    avatar: 'images/05.jpg',
    status: 'MessageModel.stausOnline',
  ),
  MessageModel(
    name: 'Neha',
    time: '11:45',
    avatar: 'images/06.jpg',
    status: 'MessageModel.stausoffline',
  ),
  MessageModel(
    name: 'Anjli',
    time: '10:25',
    avatar: 'images/05.jpg',
    status: 'MessageModel.stausOnline',
  ),
  MessageModel(
    name: 'Ajay',
    time: '11:45',
    avatar: 'images/06.jpg',
    status: 'MessageModel.stausoffline',
  ),
];
