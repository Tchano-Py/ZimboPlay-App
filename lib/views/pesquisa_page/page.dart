import 'package:flutter/material.dart';

class PagePesquisa extends StatefulWidget {
  const PagePesquisa({super.key});

  @override
  State<PagePesquisa> createState() => _PagePesquisaState();
}

class _PagePesquisaState extends State<PagePesquisa> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 30),
      child: const SingleChildScrollView(
        child: Center(
          child: Text('Pequisar'),
        ),
      ),
    );
  }
}