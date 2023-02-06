import 'package:flutter/material.dart';
import 'package:musicplayer/Global.dart';
import 'package:assets_audio_player/assets_audio_player.dart';


import 'musicPage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/' : (context) => Myapp(),
      'musicpage' : (context) => musicPage(),
    },
  ));
}

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {

  final assetsAudioPlayer = AssetsAudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "RAINBOW MUSIC",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: Global.allSong
              .map((e) => Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: e['color'],
                          ),
                          width: double.infinity,
                          height: 100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: 130,
                                height: 90,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: NetworkImage("${e['image']}"),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              SizedBox(width: 10,),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("${e['title']}",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 25),),
                                  SizedBox(height: 15),
                                  Text("${e['subtitle']}",style: TextStyle(fontSize: 20,color: Colors.white70),),
                                ],
                              ),
                              SizedBox(width: 10,),
                              IconButton(
                                onPressed: () {
                                  Navigator.of(context).pushNamed('musicpage',arguments: e);
                                  // assetsAudioPlayer.open(Audio(e['audio']),autoStart: true);
                                },
                                icon: Icon(Icons.play_arrow,size: 30,color: Colors.white,),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ))
              .toList(),
        ),
      ),
      //ListView.builder(
      //   itemCount: Global.allSong.length,
      //   itemBuilder: (context, i) {
      //     return Padding(
      //       padding: const EdgeInsets.all(10),
      //       child: Container(
      //         decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(10),
      //           color: Colors.lightGreen,
      //         ),
      //         child: ListTile(
      //            leading: Container(
      //              width: 130,
      //              height: 130,
      //              decoration: BoxDecoration(
      //                shape: BoxShape.circle,
      //                image: DecorationImage(
      //                    image:  AssetImage("${Global.allSong[i]['image']}"),
      //                    fit: BoxFit.fill
      //                ),
      //              ),
      //            ),
      //           // CircleAvatar(
      //           //   radius: 150,
      //           //   backgroundImage: AssetImage("${Global.allSong[i]['image']}"),
      //           //   // backgroundImage:Image.asset("${Global.allSong[i]['image']}"),
      //           // ),
      //           title: Text("${Global.allSong[i]['title']}",style: TextStyle(color: Colors.white),),
      //           subtitle: Text("${Global.allSong[i]['subtitle']}",style: TextStyle(color: Colors.white),),
      //           trailing: IconButton(
      //             onPressed: () {},
      //             icon: Icon(Icons.play_arrow),
      //           ),
      //         ),
      //       ),
      //     );
      //   },
      // ),
      backgroundColor: Colors.black,
    );
  }
}
