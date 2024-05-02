import 'package:first_app/api/api.dart';
import 'package:flutter/material.dart';

class PlayList extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  PlayList({super.key,required this.type});  
  final String type;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.symmetric(horizontal: 20),
      margin: const EdgeInsets.only(top:20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListHeader(type: type),
          ListWrapper()
        ],
      ),
    );
  }
}

class ListHeader extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  ListHeader({super.key,required this.type});
  final String type;
 
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          type == 'top' ? 'Top Album' : type == 'popular' ? 'Popular radio' : 'Recommended radio',
          style: const TextStyle(fontSize: 20,color: Colors.black87),
        ),
        GestureDetector(
          child: const Text(
            'Show all',
            style: TextStyle(color: Colors.black54),
          ),
        )
      ],
    );
  }
}

class ListWrapper extends StatefulWidget {
  const ListWrapper({super.key});

  @override
  State<ListWrapper> createState() => _ListWrapperState();
}

class _ListWrapperState extends State<ListWrapper> {
  fetchAlbum() async {  
    final artist = await SpotifyCredentials.spotify.albums.list(['382ObEPsp2rxGrnsizN5TX','1A2GTWGtFfWp7KSQTwWOyo']);
    print(artist);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}