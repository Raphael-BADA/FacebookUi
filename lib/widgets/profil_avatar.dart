import 'package:flutter/material.dart';

import '../data/data.dart';

class ProfilAvatar extends StatelessWidget {
  final String imageUrl;
  final bool isActive;
  const ProfilAvatar(
      {super.key, required this.imageUrl, this.isActive = false});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          backgroundColor: Colors.grey,
          backgroundImage: NetworkImage(imageUrl),
        ),
        Positioned(child: Container())
      ],
    );
  }
}
