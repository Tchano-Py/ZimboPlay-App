import 'package:flutter/material.dart';

class PageAoVivo extends StatefulWidget {
  const PageAoVivo({super.key});

  @override
  State<PageAoVivo> createState() => _PageAoVivoState();
}

class _PageAoVivoState extends State<PageAoVivo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 30),
      child: const SingleChildScrollView(
        child: Center(
          child: Text('Ao Vivo'),
        ),
      ),
    );
  }
}
