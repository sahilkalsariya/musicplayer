import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

class musicPage extends StatefulWidget {
  const musicPage({Key? key}) : super(key: key);

  @override
  State<musicPage> createState() => _musicPageState();
}

class _musicPageState extends State<musicPage> {
  final AssetsAudioPlayer assetsAudioPlayer = AssetsAudioPlayer();

  @override
  void dispose() {
    super.dispose();
    assetsAudioPlayer.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Map data = ModalRoute.of(context)!.settings.arguments as Map;
    assetsAudioPlayer.open(Audio(data['audio']));

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Now Playing",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Stack(children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          child: Image.asset(
            "assets/images/blur.jpg",
            fit: BoxFit.cover,
          ),
          // decoration: BoxDecoration(
          //   image: DecorationImage(
          //     image: AssetImage("assets/images/blur.jpg"),
          //     fit: BoxFit.cover,
          //   ),
          // ),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 300,
                width: 300,
                child: Image.network("${data['image']}"),
                //   decoration: BoxDecoration(
                //     image: DecorationImage(
                //       image: AssetImage("${data['image']}"),
                //     ),
                //   ),
              ),
              Text(
                "${data['title']}",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 30),
              ),
              Text(
                "${data['subtitle']}",
                style: TextStyle(color: Colors.white70, fontSize: 30),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      assetsAudioPlayer.pause();
                    },
                    icon: Icon(
                      Icons.pause,
                      size: 20,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                        assetsAudioPlayer.playOrPause();
                    },
                    icon: Icon(
                      Icons.play_arrow,
                      size: 20,
                      color: Colors.white,
                    )
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.headphones,
                      size: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              StreamBuilder(
                stream: assetsAudioPlayer.currentPosition,
                builder: (context, snapshot) {
                  Duration? data = snapshot.data as Duration?;
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Slider(
                        value: data!.inSeconds.toDouble(),
                        onChanged: (val) {
                          assetsAudioPlayer
                              .seek(Duration(seconds: val.toInt()));
                        },
                        max: (assetsAudioPlayer.current.value != null)
                            ? assetsAudioPlayer
                                    .current.value?.audio.duration.inSeconds
                                    .toDouble() ??
                                0
                            : 0,
                        min: 0,
                        activeColor: Colors.white,
                        inactiveColor: Colors.white60,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            data.toString().split('.')[0],
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          Text(
                            "/",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          (assetsAudioPlayer.current.value != null)
                              ? Text(
                                  "${assetsAudioPlayer.current.value!.audio.duration.toString().split(".")[0]}",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                )
                              : Text(
                                  "0:00:00",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                )
                        ],
                      )
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
