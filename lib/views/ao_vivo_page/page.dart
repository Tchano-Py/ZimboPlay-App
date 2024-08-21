import 'package:flutter/material.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:video_player/video_player.dart';

class PageAoVivo extends StatefulWidget {
  const PageAoVivo({super.key});

  @override
  State<PageAoVivo> createState() => _PageAoVivoState();
}

class _PageAoVivoState extends State<PageAoVivo> {
  late FlickManager _controller;

  @override
  void initState() {
    super.initState();
    _controller = FlickManager(
      videoPlayerController: VideoPlayerController.asset(
        'assets/video/video_1.mp4',
      )..initialize().then(
          (_) {
            setState(() {});
          },
        ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 30),
      child: SingleChildScrollView(
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  FlickVideoPlayer(
                    flickManager: _controller,
                  ),
                  if (_controller.flickVideoManager?.videoPlayerController
                          ?.value.isInitialized ==
                      false)
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset('assets/image/noticia-destaque.png'),
                        const CircularProgressIndicator(),
                      ],
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
