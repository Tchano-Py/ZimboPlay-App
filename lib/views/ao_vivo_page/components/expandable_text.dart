import 'package:flutter/material.dart';

class Expandabletext extends StatefulWidget {
  final String text;
  final TextStyle textStyle;
  final TextStyle fadedTextStyle;
  final int maxLines;
  const Expandabletext({super.key, required this.text, required this.textStyle, required this.fadedTextStyle, required this.maxLines});

  @override
  State<Expandabletext> createState() => _ExpandabletextState();
}

class _ExpandabletextState extends State<Expandabletext> {
  bool isExpanded = false;
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isExpanded = !isExpanded;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 3000),
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            final span = TextSpan(
              text: widget.text,
              style: widget.textStyle,
            );

            final textPainter = TextPainter(
              text: span,
              maxLines: widget.maxLines,
              textDirection: TextDirection.ltr,
              ellipsis: '...',
            )..layout(maxWidth: constraints.maxWidth);

            if (textPainter.didExceedMaxLines && !isExpanded) {
              final text = widget.text;
              final fadedSpan = TextSpan(
                text: text,
                style: widget.textStyle,
                children: [
                  TextSpan(
                    text: textPainter.width > constraints.maxWidth
                        ? "\n..."
                        : '',
                    style: widget.fadedTextStyle,
                  ),
                ],
              );

              return RichText(
                text: fadedSpan,
                maxLines: widget.maxLines,
                overflow: TextOverflow.fade,
              );
            } else {
              return Text(
                widget.text,
                style: widget.textStyle,
              );
            }
          },
        ),
      ),
    );
  }
}