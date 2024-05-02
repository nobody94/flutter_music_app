import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding:const EdgeInsets.symmetric(horizontal: 20),
        margin: const EdgeInsets.only(top:20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                    width: 30.0,
                    height: 30.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.blue),
                    child: const Center(
                      child: Text('M'),
                    )),
                const SizedBox(width: 15),
                const Text('Hi, Martha')
              ]
            ),
            GestureDetector(
              child: const Icon(Icons.menu),
              onTap: () {},
            )
          ],
        ),
      );
  }
}