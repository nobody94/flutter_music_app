import 'package:cached_network_image/cached_network_image.dart';
import 'package:first_app/ultity/list_shimmer.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListWrapper extends StatelessWidget {
  ListWrapper({super.key,required this.listChild,required this.isLoading, this.num = 5});
  
  List<PlayType> listChild;  
  bool isLoading;
  int num;

  void onClickHandle(PlayType child){
    // print(child.type);
    if(child.type.toLowerCase() == 'album'){
      print(child.id);
    }
  }
 
  @override
  Widget build(BuildContext context) {
    return Column(
      children: isLoading 
      ? [
        ListShimmer(num: num)
      ]
      : listChild.map((c){       
          return Column(
            children: [
              Row(          
                children: [
                    GestureDetector(
                      onTap:()=>onClickHandle(c),
                      child: CachedNetworkImage(
                        progressIndicatorBuilder: (context, url, progress) => Center(  
                          child: SizedBox(
                            width:15,
                            height:15,
                            child: CircularProgressIndicator(
                              value: progress.progress,
                              strokeWidth: 2,
                            ),
                          ),
                        ),
                        imageUrl:c.images[0],
                        width: 50
                      )
                    ),                   
                    const SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap:()=>onClickHandle(c),
                          child: Text(c.name,style: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold))
                        ),
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


class ArtistType {
  String id;
  String name;

  ArtistType({required this.id, required this.name});
}