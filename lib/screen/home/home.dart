import 'package:first_app/screen/home/home_header.dart';
import 'package:first_app/screen/home/search.dart';
import 'package:first_app/screen/playlist/new_release.dart';
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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,         
            children: [
              const HomeHeader(),
              Search(),
              const NewRelease()       
            ],
          ),
        ),
      ),
    );
  }
}