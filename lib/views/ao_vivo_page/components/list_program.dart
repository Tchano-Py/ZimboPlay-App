import 'package:flutter/material.dart';

class ListProgram extends StatefulWidget {
  const ListProgram({super.key});

  @override
  State<ListProgram> createState() => _ListProgramState();
}

class _ListProgramState extends State<ListProgram> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          SizedBox(
            width: 99.0,
            height: 99.0,
            child: Card(
              color: const Color.fromRGBO(34, 34, 34, 1),
              clipBehavior: Clip.antiAlias,
              child: Image.asset('assets/image/programa_1.png'),
            ),
          ),
          const SizedBox(width: 10),
          SizedBox(
            width: 99.0,
            height: 99.0,
            child: Card(
              color: const Color.fromRGBO(34, 34, 34, 1),
              clipBehavior: Clip.antiAlias,
              child: Image.asset('assets/image/programa_2.png'),
            ),
          ),
          const SizedBox(width: 10),
          SizedBox(
            width: 99.0,
            height: 99.0,
            child: Card(
              color: const Color.fromRGBO(34, 34, 34, 1),
              clipBehavior: Clip.antiAlias,
              child: Image.asset('assets/image/programa_3.png'),
            ),
          ),
          const SizedBox(width: 10),
          SizedBox(
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
        ],
      ),
    );
  }
}
