import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PageSplash extends StatefulWidget {
  const PageSplash({super.key});

  @override
  State<PageSplash> createState() => _PageSplashState();
}

class _PageSplashState extends State<PageSplash> with TickerProviderStateMixin {
  late AnimationController controller;

  bool animate = true;

  @override
  void initState() {
    super.initState();

    // Pré-carregar a imagem de fundo
    WidgetsBinding.instance.addPostFrameCallback((_) {
      precacheImage(const AssetImage("assets/image/background.png"), context);
    });

    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    )..addListener(() {
        setState(() {});
      });
    controller.repeat(reverse: true);

    Future.delayed(const Duration(seconds: 7), () {
      if (mounted) {
        context.go('/login');
      }
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/image/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(
              left: 10, bottom: MediaQuery.of(context).size.height * 0.055),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.asset(
                "assets/image/vivaplay-logotipo.png",
                width: MediaQuery.of(context).size.width * 0.4,
                //height: MediaQuery.of(context).size.height * 0.1,
                fit: BoxFit.contain,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: LinearProgressIndicator(
                        backgroundColor:
                            const Color.fromRGBO(196, 196, 196, .3),
                        valueColor: const AlwaysStoppedAnimation<Color>(
                            Color(0xFFC49021)),
                        minHeight: 8,
                        value: controller.value,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(30)),
                        semanticsLabel: 'Linear progress indicator',
                      ),
                    ),
                    const Text(
                      "Por favor, aguarde...",
                      style: TextStyle(
                        color: Color(0xFF737554),
                        fontSize: 12,
                        height: 2.03,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
