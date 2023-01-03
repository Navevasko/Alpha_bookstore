import 'package:alpha_bookstore/shared/theme/app_colors.dart';
import 'package:alpha_bookstore/shared/theme/text_styles.dart';
import 'package:alpha_bookstore/shared/widgets/auth_button/auth_button.dart';
import 'package:alpha_bookstore/shared/widgets/text_input/text_input.dart';
import "package:flutter/material.dart";

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  // void userController(String text) {
  //   print(text);
  // }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Container(
                color: Colors.amber,
                width: 175,
                height: 175,
              ),
            ),
            Column(
              children: [
                TextInput(
                  keyboardType: TextInputType.text,
                  onChanged: (String text) {},
                  icon: Icons.cancel,
                  hint: "Nome de usuário",
                ),
                TextInput(
                  keyboardType: TextInputType.visiblePassword,
                  onChanged: (String text) {},
                  icon: Icons.remove_red_eye,
                  hint: "Senha",
                ),
              ],
            ),
            AuthButton(onTap: () {}, text: "Login"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Ainda não tem uma conta?",
                  style: TextStyles.normalText,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Cadastre-se",
                    style: TextStyles.boldText,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
