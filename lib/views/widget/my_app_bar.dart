import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    bool animate = true;

    return FadeInDown(
      animate: animate,
      duration: const Duration(milliseconds: 500),
      delay: const Duration(seconds: 0),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.6),
        child: Container(
          height: 70.0,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Color.fromRGBO(255, 255, 255, 1),
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 5.0,
              right: 18.0,
              bottom: 16.0,
              top: 16.0,
            ),
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 6,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Image.asset(
                      'assets/image/vivaplay-logotipo-menu.png',
                    ),
                  ),
                ),
                Image.asset(
                  'assets/image/icon-sino-notificacoes.png',
                  width: 22.0,
                  height: 22.0,
                ),
                const SizedBox(width: 12),
                Image.asset(
                  'assets/image/icon-definicao.png',
                  width: 22.0,
                  height: 22.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
