import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';

class PageExclusivo extends StatefulWidget {
  const PageExclusivo({super.key});

  @override
  State<PageExclusivo> createState() => _PageExclusivoState();
}

class _PageExclusivoState extends State<PageExclusivo> {
  bool animate = true;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(18.0),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ 
            FadeInUp(
              animate: animate,
              duration: const Duration(milliseconds: 500),
              delay: const Duration(seconds: 0),
              child: AnimatedTextKit(
              animatedTexts: [
                  TypewriterAnimatedText(
                    "Uma nova fase\nestá a chegar...",
                    speed: const Duration(milliseconds: 150),
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 35,
                      color: Colors.white,
                      height: 1.2,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              isRepeatingAnimation: false,
              ),
            ),
            const SizedBox(height: 17),
            FadeInUp(
              animate: animate,
              duration: const Duration(milliseconds: 600),
              delay: const Duration(seconds: 0),
              child: const Text(
                "Estamos a trabalhar para\nlevar o melhor conteúdo para si.\n100% exclusivo à Zimbo Play.",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Colors.white,
                  height: 1.2,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 40.0),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FadeInUp(
                  animate: animate,
                  duration: const Duration(milliseconds: 700),
                  from: 50,
                  delay: const Duration(seconds: 0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * .25,
                    height: MediaQuery.of(context).size.height * .15,
                    child: Opacity(
                      opacity: .3,
                      child: Card(
                        clipBehavior: Clip.antiAlias,
                        child: Image.asset(
                          'assets/image/vitrine.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 7.0),
                FadeInUp(
                  animate: animate,
                  duration: const Duration(milliseconds: 700),
                  from: 100,
                  delay: const Duration(seconds: 0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * .26,
                    height: MediaQuery.of(context).size.height * .16,
                    child: Opacity(
                      opacity: .6,
                      child: Card(
                        clipBehavior: Clip.antiAlias,
                        child: Image.asset(
                          'assets/image/jornal_2.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 7.0),
                FadeInUp(
                  animate: animate,
                  duration: const Duration(milliseconds: 700),
                  from: 150,
                  delay: const Duration(seconds: 0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * .25,
                    height: MediaQuery.of(context).size.height * .15,
                    child: Opacity(
                      opacity: .3,
                      child: Card(
                        clipBehavior: Clip.antiAlias,
                        child: Image.asset(
                          'assets/image/made_in_angola_1.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
