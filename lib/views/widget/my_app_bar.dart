import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
