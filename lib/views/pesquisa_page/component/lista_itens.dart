import 'package:flutter/material.dart';

class ListaItens extends StatefulWidget {
  final String titulo;
  final List<String> imagens;

  const ListaItens({
    super.key,
    required this.titulo,
    required this.imagens,
  });

  @override
  State<ListaItens> createState() => _ListaItensState();
}

class _ListaItensState extends State<ListaItens> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.titulo,
          style: const TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 22,
            color: Color.fromRGBO(115, 117, 84, 1),
          ),
        ),
        const SizedBox(height: 8.0),
        SizedBox(
          height: 100.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List<Widget>.generate(widget.imagens.length, (index) {
              return SizedBox(
                width: 99.0,
                height: 99.0,
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  child: Image.asset(
                    "assets/image/${widget.imagens[index]}",
                    fit: BoxFit.cover,
                  ),
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}
