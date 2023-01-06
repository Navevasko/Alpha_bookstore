import 'package:alpha_bookstore/infra/books.dart';
import 'package:alpha_bookstore/shared/theme/text_styles.dart';
import 'package:alpha_bookstore/shared/widgets/book/book.dart';
import 'package:alpha_bookstore/shared/widgets/text_input/text_input.dart';
import "package:flutter/material.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    books = test();

    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: SizedBox(
        height: size.height * 1.3,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            iconTheme: const IconThemeData(color: Colors.black),
            elevation: 0,
            backgroundColor: Colors.white,
            leading: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.menu,
                )),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.notifications_outlined),
                    ),
                    Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35),
                        color: Colors.amber,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          body: Column(children: [
            ListTile(
              title: Text.rich(
                  textAlign: TextAlign.start,
                  TextSpan(
                      text: "Olá, Guilherme 👋",
                      style: TextStyles.homePageTitle,
                      children: [
                        TextSpan(
                            text: "\nO que você quer ler hoje?",
                            style: TextStyles.normalText)
                      ])),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: TextInput(
                keyboardType: TextInputType.text,
                onChanged: (value) {},
                hint: "Pesquise aqui",
                startingIcon: Icons.search,
              ),
            ),
            SizedBox(
              height: 50,
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text(
                          "Ficção",
                          style: TextStyles.boldText,
                        )),
                    Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text(
                          "Auto-ajuda",
                          style: TextStyles.normalText,
                        )),
                    Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text(
                          "Ciência",
                          style: TextStyles.normalText,
                        )),
                    Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text(
                          "Romance",
                          style: TextStyles.normalText,
                        )),
                    Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text(
                          "Aventura",
                          style: TextStyles.normalText,
                        )),
                    Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text(
                          "Fantasia",
                          style: TextStyles.normalText,
                        )),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 350,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  Book(
                      cover: Colors.red,
                      title: "Catcher in the Rye",
                      author: "J.D. Salinger",
                      code: "P198.00"),
                  Book(
                      cover: Colors.yellowAccent,
                      title: "Someone Like You",
                      author: "Roald Dahl",
                      code: "P198.00"),
                  Book(
                      cover: Colors.brown,
                      title: "Lord of the Rings",
                      author: "J.R.R Tolkein",
                      code: "P198.00"),
                  Book(
                      cover: Colors.red,
                      title: "Catcher in the Rye",
                      author: "J.D. Salinger",
                      code: "P198.00"),
                  Book(
                      cover: Colors.red,
                      title: "Catcher in the Rye",
                      author: "J.D. Salinger",
                      code: "P198.00"),
                ],
              ),
            ),
            SizedBox(
              height: 375,
              child: Column(
                children: [
                  Container(
                      height: 25,
                      width: double.infinity,
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        "Novos",
                        textAlign: TextAlign.start,
                        style: TextStyles.boldText,
                      )),
                  SizedBox(
                    height: 350,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        Book(
                            cover: Colors.red,
                            title: "Catcher in the Rye",
                            author: "J.D. Salinger",
                            code: "P198.00"),
                        Book(
                            cover: Colors.yellowAccent,
                            title: "Someone Like You",
                            author: "Roald Dahl",
                            code: "P198.00"),
                        Book(
                            cover: Colors.brown,
                            title: "Lord of the Rings",
                            author: "J.R.R Tolkein",
                            code: "P198.00"),
                        Book(
                            cover: Colors.red,
                            title: "Catcher in the Rye",
                            author: "J.D. Salinger",
                            code: "P198.00"),
                        Book(
                            cover: Colors.red,
                            title: "Catcher in the Rye",
                            author: "J.D. Salinger",
                            code: "P198.00"),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
