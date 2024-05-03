import 'package:flutter/material.dart';

class PlayList extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  PlayList({super.key,required this.listChild,required this.title});    
  final String title;
  final List<PlayType> listChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.symmetric(horizontal: 20),
      margin: const EdgeInsets.only(top:20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListHeader(title: title,onShowAll:(){}),
          const SizedBox(height: 10),
          ListWrapper(listChild: listChild)
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class ListHeader extends StatelessWidget {
  ListHeader({super.key,required this.title, required this.onShowAll});
  final String title;
  Function() onShowAll;
 
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

// ignore: must_be_immutable
class ListWrapper extends StatelessWidget {
  ListWrapper({super.key,required this.listChild});
  
  List<PlayType> listChild;  

  @override
  Widget build(BuildContext context) {
    return Column(
      children: listChild.map((c){       
          return Column(
            children: [
              Row(          
                children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.network(c.images[0],width: 50),
                        const Icon(Icons.play_arrow,color: Colors.white,size: 30,)
                      ]
                    ),                    
                    const SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(c.name,style: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
                        const SizedBox(height: 5),
                        c.artist != null 
                        ? Text(
                          c.artist!.map((t)=> t.name).join(', '),
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(fontSize: 12,color: Colors.black54)
                        ) 
                        : const SizedBox(),          
                        c.description != null 
                        ? Text(
                          c.description!,
                          overflow: TextOverflow.ellipsis,
                        ) 
                        : const SizedBox()
                      ]
                    )            
                  ],         
              ),
              const SizedBox(height: 15)
            ]
          );
        }).toList(),     
    );   
  }
}

class ArtistType {
  String id;
  String name;

  ArtistType({required this.id, required this.name});
}

class PlayType {
  String id;
  String name;
  List<String> images;
  String type;
  List<ArtistType> ?artist;
  String ?description;

  PlayType({
    required this.id, 
    required this.name,
    required this.images,
    required this.type,
    this.artist,
    this.description
  });
}