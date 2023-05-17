import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //initialisation de le video

  late VideoPlayerController videoPlayerController=
      VideoPlayerController.asset("assets/images/IMG_20230516_145753_202.mp4");

  ChewieController? chewieController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    chewieController = ChewieController(
        videoPlayerController: videoPlayerController,
        aspectRatio: 9 / 20,
        autoPlay: true,
        looping: true,
        autoInitialize: true,
        showControls: false);
    videoPlayerController;
  }

  @override
  void dispose() {
    videoPlayerController.dispose();
    chewieController!.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      fit: StackFit.expand,
      children: [
        Expanded(child: Chewie(controller: chewieController!) /*  */),
        const Text("Bienvenue à SOABanque mobile")
      ],
    ));
  }
}

 /*  Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/IMG_20230515_152247_126.jpg"),
                fit: BoxFit.cover)),
      ), */
