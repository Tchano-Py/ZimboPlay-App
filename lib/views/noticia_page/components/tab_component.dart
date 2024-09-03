import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:zimbo_play/services/data/data_noticias.dart';
import 'package:zimbo_play/views/widget/my_card_item.dart';

class TabComponent extends StatefulWidget {
  final String type;

  const TabComponent({super.key, required this.type});

  @override
  State<TabComponent> createState() => _TabComponentState();
}

class _TabComponentState extends State<TabComponent> {
  bool animate = true;

  @override
  Widget build(BuildContext context) {
    List<Noticia> noticiasFiltradas = noticias
        .where((noticia) => noticia.tipos.contains(widget.type))
        .toList();

    return ListView.builder(
      itemCount: noticiasFiltradas.length,
      itemBuilder: (context, index) {
        final noticia = noticiasFiltradas[index];
        int time = 800 + (index * 100);
        return FadeInDown(
          animate: animate,
          duration: Duration(milliseconds: time),
          delay: const Duration(seconds: 0),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 5.0),
            child: MyCardItem(
              image: noticia.image,
              title: noticia.titulo,
              time: noticia.data,
              topic: noticia.tipos,
            ),
          ),
        );
      },
    );
  }
}
