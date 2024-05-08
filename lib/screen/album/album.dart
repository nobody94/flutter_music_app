import 'package:flutter/material.dart';

class Album extends StatefulWidget {
  Album({super.key, required this.title, required this.id});
  String title;
  String id;
  @override
  State<Album> createState() => _AlbumState();
}

class _AlbumState extends State<Album> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [],
    );
  }
}