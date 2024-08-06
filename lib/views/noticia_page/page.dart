import 'package:flutter/material.dart';

class PageNoticia extends StatefulWidget {
  const PageNoticia({super.key});

  @override
  State<PageNoticia> createState() => _PageNoticiaState();
}

class _PageNoticiaState extends State<PageNoticia> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 30),
      child: const SingleChildScrollView(
        child: Center(
          child: Text('Noticias'),
        ),
      ),
    );
  }
}