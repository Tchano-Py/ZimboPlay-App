import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:zimbo_play/views/widget/my_card.dart';
import 'package:zimbo_play/views/widget/my_carousel.dart';

class PageHome extends StatefulWidget {
  const PageHome({super.key});

  @override
  State<PageHome> createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  bool animate = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 30),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 100),
            FadeIn(
              animate: animate,
              duration: const Duration(milliseconds: 500),
              delay: const Duration(seconds: 0),
              child: const Text(
                "Jornalismo Zimbo,\nAngola acredita.",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w900,
                  height: 1.2,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 28),
            FadeInUp(
              animate: animate,
              duration: const Duration(milliseconds: 500),
              delay: const Duration(seconds: 0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * .85,
                padding: const EdgeInsets.all(18.0),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  children: <Widget>[
                    FadeInDown(
                      animate: animate,
                      duration: const Duration(milliseconds: 600),
                      delay: const Duration(seconds: 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 4.0,
                              horizontal: 16.0,
                            ),
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(215, 64, 64, 1),
                              borderRadius: BorderRadius.all(
                                Radius.circular(30),
                              ),
                            ),
                            child: const Text(
                              'Última',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          RichText(
                            text: const TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Rússia x Ucrânia:',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(115, 117, 84, 1),
                                    fontSize: 16,
                                  ),
                                ),
                                TextSpan(
                                  text: ' Acordos?',
                                  style: TextStyle(
                                    color: Color.fromRGBO(115, 117, 84, 1),
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15),
                    FadeInDown(
                      animate: animate,
                      duration: const Duration(milliseconds: 700),
                      delay: const Duration(seconds: 0),
                      child: const MyCard(
                        imagePath: 'assets/image/Ucrânia-pede-cessar-fogo.jpeg',
                        title: 'Ucrânia pede cessar fogo.',
                        date: 'Ter, 08 de Março de 2022',
                      ),
                    ),
                    const SizedBox(height: 15),
                    FadeInDown(
                      animate: animate,
                      duration: const Duration(milliseconds: 800),
                      delay: const Duration(seconds: 0),
                      child: const MyCarousel(),
                    ),
                    const SizedBox(height: 20),
                    FadeInDown(
                      animate: animate,
                      duration: const Duration(milliseconds: 900),
                      delay: const Duration(seconds: 0),
                      child: const Text(
                        'As repúblicas separatistas pró-Rússia de Donetsk e Lugansk, cuja independência Moscou reconheceu na segunda-feira (21), estão localizadas na área de mineração russófona de Donbass (leste da Ucrânia) e estão fora do controle de Kiev desde 2014.',
                        style: TextStyle(
                          fontSize: 13,
                          color: Color.fromRGBO(115, 117, 84, 1),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
