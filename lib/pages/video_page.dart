import 'package:faacebook_lite/models/video_model.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class WatchPage extends StatefulWidget {
  const WatchPage({Key? key}) : super(key: key);

  @override
  _WatchPageState createState() => _WatchPageState();
}

class _WatchPageState extends State<WatchPage> {
  final _controller = YoutubePlayerController.fromVideoId(
    videoId: "I5lJw9Jq_t8",
    autoPlay: false,
    params: const YoutubePlayerParams(
      mute: false,
      showControls: true,
      showFullscreenButton: false,
    ),
  );

  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'video',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 10.0,
                ),
                child: Tooltip(
                  message: 'play video in a loop',
                  child: Switch(
                    value: isSwitched,
                    onChanged: (value) {
                      setState(() {
                        isSwitched = value;
                        // ignore: avoid_print
                        print(isSwitched);
                      });
                    },
                  ),
                ),
              )
            ],
          ),
        ),
        const Divider(
          thickness: 1,
          color: Colors.black26,
        ),
        Expanded(
          child: ListView.builder(
            itemCount: videoData.length,
            itemBuilder: (context, i) => Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      iconSize: 50,
                      onPressed: videoData[i].avatarOnpressed,
                      icon: CircleAvatar(
                        radius: 80.0,
                        backgroundImage: AssetImage(videoData[i].avatarimage),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                videoData[i].name,
                                style: const TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              TextButton(
                                onPressed: () => {},
                                child: const Text(
                                  'Follow',
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.blueAccent,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Wrap(
                            spacing: 10.0,
                            children: [
                              Text(
                                videoData[i].time,
                                style: const TextStyle(
                                  fontSize: 18.0,
                                ),
                              ),
                              const Icon(Icons.public)
                            ],
                          )
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: videoData[i].moreonpressed,
                      icon: const Icon(Icons.more_horiz_outlined),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      YoutubePlayerControllerProvider(
                          controller: YoutubePlayerController.fromVideoId(
                            videoId: "I5lJw9Jq_t8",
                            autoPlay: false,
                            params: const YoutubePlayerParams(
                              mute: false,
                              showControls: true,
                              showFullscreenButton: false,
                            ),
                          ),
                          child: YoutubePlayer(
                            controller: _controller,
                            aspectRatio: 16 / 9,
                          )),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          videoData[i].videoposttitle,
                          style: const TextStyle(
                              fontSize: 18.0, color: Colors.black),
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.thumb_up_alt_outlined),
                          onPressed: videoData[i].likeonpressed,
                        ),
                        const Text(
                          '12',
                          style: TextStyle(
                            fontSize: 18.0,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.message_outlined),
                          onPressed: videoData[i].commentonpressed,
                        ),
                        const Text(
                          '10',
                          style: TextStyle(
                            fontSize: 18.0,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.share_outlined),
                          onPressed: videoData[i].shareonpressed,
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
