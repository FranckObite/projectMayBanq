import 'package:flutter/material.dart';

import 'package:video_player/video_player.dart';

class Example extends StatefulWidget {
  const Example({super.key});

  @override
  State<Example> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = VideoPlayerController.asset(
        "assets/images/IMG_20230516_145753_202.mp4");
    _controller.initialize().then((value) {
      setState(() {});
    });
    _controller.play();
    _controller.setLooping(true);
  }

  @override
  void dispose() {
    _controller.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      fit: StackFit.expand,
      children: [
        Expanded(
          child: VideoPlayer(_controller), /*  */
        ),
        const Text("Bienvenue à SOABanque mobile")
      ],
    ));
  }
}
