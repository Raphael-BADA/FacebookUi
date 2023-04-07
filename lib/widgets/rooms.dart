// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../models/models.dart';
import 'widgets.dart';

class Rooms extends StatelessWidget {
  final List<User> onlineUsers;
  const Rooms({super.key, required this.onlineUsers});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      color: Colors.white,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 4.0),
        itemCount: 1 + onlineUsers.length,
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: _CreateRoomsButton(),
            );
          }
          final User user = onlineUsers[index - 1];
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: ProfilAvatar(imageUrl: user.imageUrl, isActive: true),
          );
        },
      ),
    );
  }
}

// ignore: unused_element
class _CreateRoomsButton extends StatelessWidget {
  const _CreateRoomsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //  onPressed: () => print('Create Rooms'),
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 3.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.deepPurple, width: 1),
        borderRadius: BorderRadius.horizontal(
          left: Radius.circular(20),
          right: Radius.circular(20),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.video_call,
            color: Colors.purpleAccent,
          ),
          SizedBox(width: 20),
          Column(
            children: [
              Text(
                'Create ',
                style: TextStyle(color: Colors.blue),
              ),
              Text(
                'rooms',
                style: TextStyle(color: Colors.blue),
              ),
            ],
          ),
        ],
      ),
      // style: ButtonStyle(),
    );
  }
}
