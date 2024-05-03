import 'package:first_app/api/api.dart';
import 'package:first_app/screen/playlist/playlist.dart';
import 'package:flutter/material.dart';
import 'package:spotify/spotify.dart';

class NewRelease extends StatefulWidget {
  const NewRelease({super.key});

  @override
  State<NewRelease> createState() => _NewReleaseState();
}

class _NewReleaseState extends State<NewRelease> {
  List<PlayType> listAlbum = [];

  fetchAlbum() async {  
    final album = await SpotifyCredentials.spotify.browse.newReleases(country: Market.VN).first(5);    
    if(album.items != null){
      for (var a in album.items!) {    
      setState(() {
          listAlbum.add(PlayType(id: a.id!, name: a.name!, images: a.images!.map((m)=> m.url!).toList(),artist: a.artists!.map((t)=> ArtistType(id:t.id!,name: t.name!)).toList(), type: a.type! ));
        });
      }
    } 
  }   

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchAlbum();    
  }
    
  @override
  Widget build(BuildContext context) {
    return  PlayList(listChild:listAlbum,title:'Bài hát mới nhất');
  }
}