import 'package:flutter/material.dart';

class PageExclusivo extends StatefulWidget {
  const PageExclusivo({super.key});

  @override
  State<PageExclusivo> createState() => _PageExclusivoState();
}

class _PageExclusivoState extends State<PageExclusivo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 30),
      child: const SingleChildScrollView(
        child: Center(
          child: Text('Exclusivo'),
        ),
      ),
    );
  }
}