import 'package:alpha_bookstore/shared/widgets/book/book.dart';
import 'package:flutter/material.dart';

class BookInfoPage extends StatelessWidget {
  const BookInfoPage({super.key});

  final Color bookCover = Colors.red;
  final String bookTitle = "Catcher in the Rye";
  final String bookAuthor = "J.D. Salinger";
  final String authorDescription =
      "Cillum sunt officia in nulla. Adipisicing exercitation eiusmod nisi ut eu. Incididunt ullamco proident dolore irure cillum exercitation est. Elit occaecat labore elit voluptate amet nostrud dolore laborum id. Excepteur ex est est cupidatat. Ut mollit adipisicing ullamco ea qui tempor ipsum eiusmod dolore cupidatat veniam. Laborum esse anim qui aute deserunt. Incididunt velit exercitation pariatur dolor voluptate adipisicing. Lorem id cillum deserunt excepteur id sit. Nisi occaecat nostrud et anim esse sit reprehenderit ad excepteur nostrud quis. Quis consequat id proident ea pariatur irure occaecat officia. Aliquip labore ipsum reprehenderit ullamco adipisicing consequat amet minim in.";
  final String bookDescription =
      "Lorem dolore elit ullamco id. Adipisicing ullamco ullamco voluptate proident laborum. Aliquip non eiusmod veniam consequat nulla consequat commodo adipisicing fugiat mollit duis aliqua mollit eu. Est Lorem eu sint aliquip non est. Eiusmod culpa dolore commodo adipisicing reprehenderit aute. Deserunt quis quis fugiat eiusmod occaecat fugiat tempor nisi consectetur amet labore excepteur. Culpa ullamco ut incididunt adipisicing proident voluptate veniam deserunt. Ad laboris non cupidatat anim proident fugiat laborum et et. Non mollit id duis ad est amet laboris minim.";
  final String bookCode = "P198.00";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const BackButton(),
          title: Text(bookTitle),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite,
                  color: Colors.red,
                ))
          ],
        ),
        body: SingleChildScrollView(
            child: Column(children: [
          Expanded(
            child: Book(
              title: bookTitle,
              cover: bookCover,
              author: bookAuthor,
              code: bookCode,
            ),
          ),
          const Expanded(
              child: Text.rich(TextSpan(text: "Sobre o Autor", children: [
            TextSpan(
                text:
                    "Veniam proident mollit ut velit proident aliquip occaecat est ipsum duis. Culpa commodo aute sint nulla labore nulla incididunt aute esse veniam officia velit. Anim nisi irure anim minim labore nisi aute id. Fugiat reprehenderit voluptate laboris in fugiat deserunt pariatur in. Eu exercitation anim veniam id voluptate labore exercitation eiusmod culpa veniam quis sit. Magna ex laboris sunt eu. Ea fugiat qui fugiat in. Mollit occaecat consequat est cillum anim voluptate quis adipisicing deserunt cupidatat adipisicing enim est. Ea aliquip ea Lorem veniam dolor officia labore voluptate occaecat aliquip enim. Ut non aliquip adipisicing magna cillum id consequat sit enim tempor nostrud incididunt consequat. Dolor fugiat qui commodo ut esse quis cillum non culpa minim adipisicing.")
          ]))),
          const Expanded(
              child: Text.rich(TextSpan(text: "Sobre o Obra", children: [
            TextSpan(
                text:
                    "Veniam proident mollit ut velit proident aliquip occaecat est ipsum duis. Culpa commodo aute sint nulla labore nulla incididunt aute esse veniam officia velit. Anim nisi irure anim minim labore nisi aute id. Fugiat reprehenderit voluptate laboris in fugiat deserunt pariatur in. Eu exercitation anim veniam id voluptate labore exercitation eiusmod culpa veniam quis sit. Magna ex laboris sunt eu. Ea fugiat qui fugiat in. Mollit occaecat consequat est cillum anim voluptate quis adipisicing deserunt cupidatat adipisicing enim est. Ea aliquip ea Lorem veniam dolor officia labore voluptate occaecat aliquip enim. Ut non aliquip adipisicing magna cillum id consequat sit enim tempor nostrud incididunt consequat. Dolor fugiat qui commodo ut esse quis cillum non culpa minim adipisicing.")
          ])))
        ])));
  }
}
