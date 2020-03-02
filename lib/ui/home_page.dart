import 'package:flute_music_player/flute_music_player.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Song> _songs;

  @override
  void initState() {
    super.initState();
    initPlayer();
  }

  void initPlayer() async {
    var songs = await MusicFinder.allSongs();
    songs = List.from(songs);
    setState(() {
      _songs = songs;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Flute Music Player'),
        ),
      ),
      body: ListView.builder(
        itemCount: 0,
        itemBuilder: (context, int index) {
          return ListTile(
            leading: CircleAvatar(
              child: Text('DD'),
            ),
            title: Text('EE'),
          );
        },
      ),
    );
  }
}
