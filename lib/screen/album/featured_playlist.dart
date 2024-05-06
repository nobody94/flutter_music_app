import 'package:first_app/api/api.dart';
import 'package:first_app/screen/playlist/playlist.dart';
import 'package:flutter/material.dart';
import 'package:spotify/spotify.dart';

class FeaturedPlaylist extends StatefulWidget {
  const FeaturedPlaylist({super.key});

  @override
  State<FeaturedPlaylist> createState() => _FeaturedPlaylistState();
}

class _FeaturedPlaylistState extends State<FeaturedPlaylist> {
  List<PlayType> listAlbum = [];
  bool isLoading = false;

  fetchAlbum() async {  
    setState(() {
      isLoading = true;
    });
    final album = await SpotifyCredentials.spotify.albums.list(['0z9p71YszjfOWS1lmQ4W51','7dlOxZMGwE7tIRjYXGXQtF','4tHnhcKAaAaD83UfrTvUPt','5NODJ4FZWvaLLiFd554kLI','0eSbsl3j8jz96LC2NCLPc4']);    
    for (var a in album) {    
      setState(() {
        listAlbum.add(PlayType(id: a.id!, name: a.name!, images: a.images!.map((m)=> m.url!).toList(),artist: a.artists!.map((t)=> ArtistType(id:t.id!,name: t.name!)).toList(), type: a.type! ));
      });
    }
    setState(() {
      isLoading = false;
    });
  }   

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchAlbum();    
  }
    
  @override
  Widget build(BuildContext context) {
    return  PlayList(listChild:listAlbum,title:'Album phổ biến',isLoading:isLoading,onShowAll: (){});
  }
}