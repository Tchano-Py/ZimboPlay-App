import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:video_player/video_player.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zimbo_play/views/ao_vivo_page/components/expandable_text.dart';
import 'package:zimbo_play/views/ao_vivo_page/components/list_program.dart';

class PageAoVivo extends StatefulWidget {
  const PageAoVivo({super.key});

  @override
  State<PageAoVivo> createState() => _PageAoVivoState();
}

class _PageAoVivoState extends State<PageAoVivo> {
  late FlickManager _controller;

  //Salvar o tempo do video(onde parai de ver)
  void _saveVideoPosition(Duration position) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('video_position', position.inSeconds);
  }

  //Pegar a última posição do video
  void _loadVideoPosition() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int? positionInSeconds = prefs.getInt('video_position');
    if (positionInSeconds != null) {
      _controller.flickVideoManager?.videoPlayerController
          ?.seekTo(Duration(seconds: positionInSeconds));
    }
  }

  @override
  void initState() {
    super.initState();
    _controller = FlickManager(
      videoPlayerController:
          VideoPlayerController.asset('assets/video/video_1.mp4')
            ..initialize().then((_) {
              setState(() {
                _loadVideoPosition();
              });
            }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 30),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 120.0),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .85,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: Colors.white,
              ),
              child: Column(
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 16 / 10,
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          FlickVideoPlayer(
                            flickManager: _controller,
                          ),
                          if (_controller
                                  .flickVideoManager
                                  ?.videoPlayerController
                                  ?.value
                                  .isInitialized ==
                              false)
                            Stack(
                              fit: StackFit.expand,
                              children: [
                                Image.asset(
                                  'assets/image/fundo_video_1.jpeg',
                                  fit: BoxFit.cover,
                                ),
                                BackdropFilter(
                                  filter: ImageFilter.blur(
                                    sigmaX: 4,
                                    sigmaY: 4,
                                  ),
                                  child: Container(
                                    color: const Color.fromRGBO(34, 34, 34, .4),
                                  ),
                                ),
                                const Align(
                                  alignment: Alignment.center,
                                  child: SizedBox(
                                    height: 30,
                                    width: 30,
                                    child: CircularProgressIndicator(
                                      color: Color.fromRGBO(196, 144, 33, 1),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            const Expanded(
                              child: Text(
                                "Sexto Sentido",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                  color: Color.fromRGBO(115, 117, 84, 1),
                                ),
                              ),
                            ),
                            Image.asset("assets/image/eye.png"),
                            const SizedBox(width: 8),
                            const Text(
                              "+17",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                                color: Color.fromRGBO(196, 144, 33, 1),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 6),
                        const Expandabletext(
                          maxLines: 3,
                          text:
                              "É um programa audiovisual, da grelha de programação da estação televisiva TV Zimbo, que vai ao ar em direto, as 09 horas, e tem duração de 2 horas e 35 minutos, apresentado pela carismatica, Dina Simão, conta com companhia da  Mimi (assistente de estudio), que esta sempre bem humorada, disposta a  contagiar com a sua alegria os convidados e os telespectadores. O programa matinal da TV Zimbo (Sexto Sentido), conta ainda com bons convidados, surpresas, e rubricas, que não vais querer perder.",
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                            color: Color.fromRGBO(115, 115, 84, 1),
                          ),
                          fadedTextStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                            color: Color.fromRGBO(115, 115, 84, 0.0),
                          ),
                        ),
                        const SizedBox(height: 4),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor:
                                const Color.fromRGBO(196, 144, 33, 1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            minimumSize:
                                Size(MediaQuery.of(context).size.width, 38),
                          ),
                          child: const Text(
                            "Ver agenda do programa",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(height: 26),
                        const Text(
                          "Programação completa",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            color: Color.fromRGBO(34, 34, 34, 1),
                          ),
                        ),
                        const SizedBox(height: 12),
                        const ListProgram()
                      ],
                    ),
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
    final position =
        _controller.flickVideoManager?.videoPlayerController?.value.position;
    if (position != null) {
      _saveVideoPosition(position);
    }
    _controller.dispose();
    super.dispose();
  }
}
