import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:zimbo_play/views/noticia_page/components/tab_component.dart';
import 'package:zimbo_play/views/widget/my_card.dart';

class PageNoticia extends StatefulWidget {
  const PageNoticia({super.key});

  @override
  State<PageNoticia> createState() => _PageNoticiaState();
}

class _PageNoticiaState extends State<PageNoticia> {
  bool animate = true;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Container(
        padding: const EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 120.0),
              Container(
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
                child: FadeIn(
                  animate: animate,
                  duration: const Duration(milliseconds: 500),
                  delay: const Duration(seconds: 0),
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
                                color: Color.fromRGBO(57, 81, 123, 1),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(30),
                                ),
                              ),
                              child: const Text(
                                'Debate Zimbo',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const Text(
                              'Edição Especial',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(57, 81, 123, 1),
                                fontSize: 16,
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
                          imagePath: 'assets/image/noticia-destaque.png',
                          title: 'Amílcar recebe JLO',
                          date: 'Ter, 08 de Março de 2022',
                        ),
                      ),
                      const SizedBox(height: 15),
                      FadeInDown(
                        animate: animate,
                        duration: const Duration(milliseconds: 800),
                        delay: const Duration(seconds: 0),
                        child: const TabBar(
                          isScrollable: true,
                          labelColor: Color.fromRGBO(57, 81, 123, 1),
                          unselectedLabelColor: Color.fromRGBO(34, 34, 34, 0.3),
                          indicatorColor: Color.fromRGBO(57, 81, 123, 1),
                          tabs: [
                            Tab(text: 'Política'),
                            Tab(text: 'Tecnologia'),
                            Tab(text: 'Cultura'),
                            Tab(text: 'Saúde'),
                            Tab(text: 'Desporto'),
                          ],
                        ),
                      ),
                      const Expanded(
                        child: TabBarView(
                          children: [
                            TabComponent(type: 'Política'),
                            TabComponent(type: 'Tecnologia'),
                            TabComponent(type: 'Cultura'),
                            TabComponent(type: 'Saúde'),
                            TabComponent(type: 'Desporto'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
