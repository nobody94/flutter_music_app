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

  fetchAlbum() async {  
    final album = await SpotifyCredentials.spotify.albums.list(['5pSk3c3wVwnb2arb6ohCPU','1c4nTHI2hreFeF5P37wf4f','5NODJ4FZWvaLLiFd554kLI','0eSbsl3j8jz96LC2NCLPc4','4tHnhcKAaAaD83UfrTvUPt']);    
    for (var a in album) {    
      setState(() {
        listAlbum.add(PlayType(id: a.id!, name: a.name!, images: a.images!.map((m)=> m.url!).toList(),artist: a.artists!.map((t)=> ArtistType(id:t.id!,name: t.name!)).toList(), type: a.type! ));
      });
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
    return  PlayList(listChild:listAlbum,title:'Album phổ biến');
  }
}