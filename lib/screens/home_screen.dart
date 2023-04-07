// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:facebook_ui/data/data.dart';
import 'package:flutter/material.dart';
import 'package:facebook_ui/config/palette.dart';

import '../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.scaffold,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            // ignore: deprecated_member_use
            brightness: Brightness.light,
            backgroundColor: Palette.scaffold,
            title: Text(
              'facebook',
              style: TextStyle(
                  color: Palette.facebookBlue,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1),
            ),
            floating: true,
            actions: [
              CircleButton(
                icon: Icons.search,
                iconSize: 30.0,
                onPressed: () {},
              ),
              CircleButton(
                icon: Icons.messenger,
                iconSize: 30.0,
                onPressed: () {},
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: CreatePostContainer(currentUser),
          ),
          SliverToBoxAdapter(
            child: Rooms(onlineUsers: onlineUsers),
          ),
        ],
      ),
    );
  }
}
