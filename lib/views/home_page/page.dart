import 'package:flutter/material.dart';
import 'package:zimbo_play/views/widget/bg_blur.dart';
import 'package:zimbo_play/views/widget/my_app_bar.dart';

class PageHome extends StatefulWidget {
  const PageHome({super.key});

  @override
  State<PageHome> createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlurredBackground(
        backgroundImage: "assets/image/background.png",
        child: Padding(
          padding: const EdgeInsets.only(
            top: 30,
            left: 28.0,
            right: 28.0,
          ),
          child: Stack(
            children: <Widget>[
              const SingleChildScrollView(
                child: Column(
                  children: [
                    Text("Conteúdo da página"),
                    Text("Conteúdo da página"),
                    Text("Conteúdo da página"),
                    Text("Conteúdo da página"),
                    Text("Conteúdo da página"),
                    Text("Conteúdo da página"),
                    Text("Conteúdo da página"),
                    Text("Conteúdo da página"),
                    Text("Conteúdo da página"),
                    Text("Conteúdo da página"),
                    Text("Conteúdo da página"),
                    Text("Conteúdo da página"),
                    Text("Conteúdo da página"),
                    Text("Conteúdo da página"),
                    Text("Conteúdo da página"),
                    Text("Conteúdo da página"),
                    Text("Conteúdo da página"),
                    Text("Conteúdo da página"),
                    Text("Conteúdo da página"),
                    Text("Conteúdo da página"),
                    Text("Conteúdo da página"),
                    Text("Conteúdo da página"),
                    Text("Conteúdo da página"),
                    Text("Conteúdo da página"),
                    Text("Conteúdo da página"),
                    Text("Conteúdo da página"),
                    Text("Conteúdo da página"),
                    Text("Conteúdo da página"),
                    Text("Conteúdo da página"),
                    Text("Conteúdo da página"),
                    Text("Conteúdo da página"),
                    Text("Conteúdo da página"),
                    Text("Conteúdo da página"),
                    Text("Conteúdo da página"),
                    Text("Conteúdo da página"),
                    Text("Conteúdo da página"),
                    Text("Conteúdo da página"),
                    Text("Conteúdo da página"),
                    Text("Conteúdo da página"),
                    Text("Conteúdo da página"),
                    Text("Conteúdo da página"),
                    Text("Conteúdo da página"),
                    Text("Conteúdo da página"),
                    Text("Conteúdo da página"),
                    Text("Conteúdo da página"),
                    Text("Conteúdo da página"),
                    Text("Conteúdo da página"),
                    Text("Conteúdo da página"),
                    Text("Conteúdo da página"),
                    Text("Conteúdo da página"),
                    Text("Conteúdo da página"),
                    Text("Conteúdo da página"),
                    Text("Conteúdo da página"),
                    Text("Conteúdo da página"),
                    Text("Conteúdo da página"),
                    Text("Conteúdo da página"),
                    Text("Conteúdo da página"),
                    Text("Conteúdo da página"),
                    Text("Conteúdo da página"),
                    Text("Conteúdo da página"),
                    Text("Conteúdo da página"),
                    Text("Conteúdo da página"),
                    Text("Conteúdo da página"),
                    Text("Conteúdo da página"),
                    Text("Conteúdo da página"),
                    Text("Conteúdo da página"),
                    Text("Conteúdo da página"),
                    Text("Conteúdo da página"),
                    Text("Conteúdo da página"),
                    Text("Conteúdo da página"),
                    Text("Conteúdo da página"),
                    Text("Conteúdo da página"),
                  ],
                ),
              ),
              MyAppBar()
            ],
          ),
        ),
      ),
    );
  }
}
