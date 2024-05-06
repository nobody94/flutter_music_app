import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ListShimmer extends StatelessWidget {
  const ListShimmer({super.key});
  List<Widget> generateContent(){   
    List<Widget> child = [];
    for (int i = 0; i < 5; i++) {
      child.add(Column(
        children: [
          Row(
            children: [
              Container(height: 50,width: 50,color: Colors.grey[600]),
              Container(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(height: 15,width: 120,color: Colors.grey[600]),
                  const SizedBox(height: 5),
                  Container(height: 10,width: 100,color: Colors.grey[400])
                ],
              )
            ],
          ),
          const SizedBox(height: 15)
        ],
      ));
    } 
    return child;
  }
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: Column(
        children: [
          ...generateContent()          
        ],
      )
    );
  }
}