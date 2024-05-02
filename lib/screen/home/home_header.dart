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
                    width: 35.0,
                    height: 35.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.blue
                    ),
                    child: const Center(
                      child: Text(
                        'M',
                        style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),
                      ),
                    )),
                const SizedBox(width: 15),
                const Text(
                  'Hi, Martha',
                  style: TextStyle(fontSize: 24),
                )
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