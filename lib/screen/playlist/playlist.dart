import 'package:flutter/material.dart';
import '../../ultity/list_wrapper.dart';

// ignore: must_be_immutable
class PlayList extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  PlayList({super.key,required this.listChild,required this.title,required this.isLoading,required this.onShowAll});    
  final String title;
  final List<PlayType> listChild;
  bool isLoading;
  void Function() onShowAll;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.symmetric(horizontal: 20),
      margin: const EdgeInsets.only(top:20),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListHeader(title: title,onShowAll:onShowAll),
          const SizedBox(height: 10),
          ListWrapper(listChild: listChild,isLoading:isLoading)
        ],
      ), 
    );
  }
}

// ignore: must_be_immutable
class ListHeader extends StatelessWidget {
  ListHeader({super.key,required this.title, required this.onShowAll});
  final String title;
  void Function() onShowAll;
 
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 18,color: Colors.black87),
        ),
        GestureDetector(
          onTap: onShowAll,
          child: const Text(
            'Show all',
            style: TextStyle(color: Colors.black54),
          )
        )
      ],
    );
  }
}

