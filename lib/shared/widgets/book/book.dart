import "package:flutter/material.dart";

import '../../theme/text_styles.dart';

class Book extends StatelessWidget {
  final Color cover;
  final String title;
  final String author;
  final String code;
  const Book(
      {super.key,
      required this.title,
      required this.cover,
      required this.author,
      required this.code});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, top: 10),
      child: InkWell(
        onTap: () {
          print("Pressed");
        },
        child: Column(children: [
          Container(
            height: 250,
            width: 160,
            decoration: BoxDecoration(
                color: cover, borderRadius: BorderRadius.circular(20)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 5),
            child: SizedBox(
              width: 160,
              height: 50,
              child: Text.rich(
                  TextSpan(text: title, style: TextStyles.bookTitle, children: [
                TextSpan(text: "\n$author", style: TextStyles.bookInfo),
                TextSpan(text: "\n$code", style: TextStyles.bookInfo)
              ])),
            ),
          )
        ]),
      ),
    );
  }
}
