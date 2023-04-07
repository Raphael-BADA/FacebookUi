// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import '../models/models.dart';

class CreatePostContainer extends StatelessWidget {
  final User currentUser;
  const CreatePostContainer(this.currentUser, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey,
                  backgroundImage: NetworkImage(currentUser.imageUrl),
                ),
                const SizedBox(width: 8.0),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration.collapsed(
                        hintText: 'What\'s on your mind ?'),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Divider(
              height: 10.0,
              thickness: 1,
            ),
          ),
          Container(
            height: 40.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.video_camera_back,
                      color: Colors.red,
                    ),
                    Text('Live')
                  ],
                ),
                VerticalDivider(width: 8.0),
                Column(
                  children: [
                    Icon(
                      Icons.photo_library,
                      color: Colors.green,
                    ),
                    Text('Photos'),
                  ],
                ),
                VerticalDivider(width: 8.0),
                Column(
                  children: [
                    Icon(
                      Icons.video_call,
                      color: Colors.purpleAccent,
                    ),
                    Text('Rooms'),
                  ],
                ),
              ],
            ),
          ),
          Divider(height: 10, thickness: 1),
        ],
      ),
    );
  }
}
