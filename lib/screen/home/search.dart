import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Search extends StatelessWidget {
  Search({super.key});
  TextEditingController controller = TextEditingController();

  InputBorder searchBorder =  OutlineInputBorder(
    borderRadius: BorderRadius.circular(20.0),         
    borderSide: const BorderSide(width:1,color: Colors.black54,style: BorderStyle.solid)       
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.symmetric(horizontal: 20),
      margin: const EdgeInsets.only(top:20),
      child: Stack(
        alignment: Alignment.center,
        children: [
          TextField(
            controller: controller,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.only(left:45,right: 10,top:5,bottom:5),
              hintText: 'What do you want to play',
              enabledBorder:searchBorder,
              focusedBorder: searchBorder
            ),
          ),
          const Positioned(
            left:10,
            child: Icon(Icons.search)
          )
        ]
      )
    );
  }
}

