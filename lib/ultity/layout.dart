import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  Layout({super.key,required this.headerTitle,this.isHomePage = false});
  String headerTitle;
  bool isHomePage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            LayoutHeader(title: headerTitle,isHomePage: isHomePage)
          ],
        )
      ),
    );
  }
}

// ignore: must_be_immutable
class LayoutHeader extends StatelessWidget {
  LayoutHeader({super.key, required this.title, this.isHomePage = false });
  String title;
  bool isHomePage;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.symmetric(horizontal: 20),
      margin: const EdgeInsets.only(top:20,bottom: 20),
      child: isHomePage ? Row(
        children: [
          Container(
            width: 35.0,
            height: 35.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.blue
            ),
            child: Center(
              child: Text(
                title[0],
                style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),
              ),
            )
          ),
          const SizedBox(width: 15),
          Text(title)
        ],
      )
      :Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: (){

            },
            child: const Icon(Icons.chevron_left),
          ),          
          Text(title)
        ],
      ),
    );
  }
}

class LayoutFooter extends StatelessWidget {
  const LayoutFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.symmetric(horizontal: 20),
      margin: const EdgeInsets.only(top:20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [

        ],
      ),
    );
  }
}