import 'package:alpha_bookstore/shared/theme/app_colors.dart';
import 'package:alpha_bookstore/shared/theme/text_styles.dart';
import 'package:alpha_bookstore/shared/widgets/auth_button/auth_button.dart';
import 'package:alpha_bookstore/shared/widgets/text_input/text_input.dart';
import "package:flutter/material.dart";

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

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
                color: Colors.black,
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
                  hint: "Nome",
                ),
                TextInput(
                  keyboardType: TextInputType.text,
                  onChanged: (String text) {},
                  icon: Icons.check_circle,
                  iconColor: AppColors.green,
                  hint: "Nome de usuário",
                ),
                TextInput(
                  keyboardType: TextInputType.text,
                  onChanged: (String text) {},
                  icon: Icons.cancel,
                  hint: "E-mail",
                ),
                TextInput(
                  keyboardType: TextInputType.visiblePassword,
                  onChanged: (String text) {},
                  icon: Icons.remove_red_eye,
                  hint: "Senha",
                ),
              ],
            ),
            AuthButton(onTap: () {}, text: "Cadastrar"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Já tem uma conta?",
                  style: TextStyles.normalText,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Faça login",
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
