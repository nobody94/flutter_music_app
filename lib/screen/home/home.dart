import 'package:first_app/screen/home/home_header.dart';
import 'package:first_app/screen/home/search.dart';
import 'package:first_app/screen/playlist/playlist.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HomeHeader(),
            Search(),
            PlayList(type: 'top')
          ],
        ),
      ),
    );
  }
}


