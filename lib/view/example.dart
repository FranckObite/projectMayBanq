import 'package:flutter/material.dart';

import 'package:video_player/video_player.dart';

class Example extends StatefulWidget {
  const Example({super.key});

  @override
  State<Example> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      fit: StackFit.expand,
      children: [
        Expanded(
          child: Text(""), /*  */
        ),
        const Text("Bienvenue à SOABanque mobile")
      ],
    ));
  }
}
