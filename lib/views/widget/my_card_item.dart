import 'package:flutter/material.dart';

class MyCardItem extends StatefulWidget {
  final String image;
  final String title;
  final String time;
  final List<String> topic;

  const MyCardItem(
      {super.key,
      required this.image,
      required this.title,
      required this.time,
      required this.topic});

  @override
  State<MyCardItem> createState() => _MyCardItemState();
}

class _MyCardItemState extends State<MyCardItem> { 
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 99.0,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 99.0,
            height: 99.0,
            child: Card(
              clipBehavior: Clip.antiAlias,
              child: Image.asset(
                'assets/image/${widget.image}',
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 10.0),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.title,
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: const TextStyle(
                          color: Color.fromRGBO(34, 34, 34, 1),
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          height: 1.2,
                        ),
                      ),
                      Text(
                        widget.time,
                        style: const TextStyle(
                          fontSize: 12,
                          color: Color.fromRGBO(34, 34, 34, 0.3),
                          height: 1,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: widget.topic.map((item) {
                      return Container(
                        margin: const EdgeInsets.only(
                          right: 8.0,
                        ),
                        padding: const EdgeInsets.symmetric(
                          vertical: 4.0,
                          horizontal: 6.0,
                        ),
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(200, 217, 248, 1),
                          borderRadius: BorderRadius.all(
                            Radius.circular(5.0),
                          ),
                        ),
                        child: Text(
                          item,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Color.fromRGBO(93, 139, 220, 1),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
