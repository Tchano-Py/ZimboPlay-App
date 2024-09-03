import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';

class ListProgram extends StatefulWidget {
  const ListProgram({super.key});

  @override
  State<ListProgram> createState() => _ListProgramState();
}

class _ListProgramState extends State<ListProgram> {
  bool animate = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          FadeInUp(
            animate: animate,
            duration: const Duration(milliseconds: 1100),
            from: 0,
            delay: const Duration(seconds: 0),
            child: SizedBox(
              width: 99.0,
              height: 99.0,
              child: Card(
                color: const Color.fromRGBO(34, 34, 34, 1),
                clipBehavior: Clip.antiAlias,
                child: Image.asset('assets/image/programa_1.png'),
              ),
            ),
          ),
          const SizedBox(width: 10),
          FadeInUp(
            animate: animate,
            duration: const Duration(milliseconds: 1100),
            from: 50,
            child: SizedBox(
              width: 99.0,
              height: 99.0,
              child: Card(
                color: const Color.fromRGBO(34, 34, 34, 1),
                clipBehavior: Clip.antiAlias,
                child: Image.asset('assets/image/programa_2.png'),
              ),
            ),
          ),
          const SizedBox(width: 10),
          FadeInUp(
            animate: animate,
            duration: const Duration(milliseconds: 1100),
            from: 100,
            child: SizedBox(
              width: 99.0,
              height: 99.0,
              child: Card(
                color: const Color.fromRGBO(34, 34, 34, 1),
                clipBehavior: Clip.antiAlias,
                child: Image.asset('assets/image/programa_3.png'),
              ),
            ),
          ),
          const SizedBox(width: 10),
          FadeInUp(
            animate: animate,
            duration: const Duration(milliseconds: 1100),
            from: 150,
            child: SizedBox(
              width: 99.0,
              height: 99.0,
              child: Card(
                color: const Color.fromRGBO(34, 34, 34, 1),
                clipBehavior: Clip.antiAlias,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset('assets/image/programa_4.png'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
