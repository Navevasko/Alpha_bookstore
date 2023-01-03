import 'package:alpha_bookstore/shared/theme/app_colors.dart';
import 'package:alpha_bookstore/shared/theme/app_images.dart';
import 'package:alpha_bookstore/shared/theme/text_styles.dart';
import 'package:alpha_bookstore/shared/widgets/auth_button/auth_button.dart';
import "package:flutter/material.dart";

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 345,
            height: 315,
            color: Colors.black,
          ),
          Text.rich(
            TextSpan(
              text: "Bem Vindo!",
              style: TextStyles.onBoardTitle,
              children: [
                TextSpan(
                    text: "\nLeia sem limites",
                    style: TextStyles.onBoardSubTitle),
              ],
            ),
            textAlign: TextAlign.center,
          ),
          Column(
            children: [
              AuthButton(
                onTap: () {},
                text: "Cadastre-se",
                color: Colors.white,
                style: TextStyles.buttonTitle,
              ),
              AuthButton(
                onTap: () {},
                text: "Faça login",
              )
            ],
          ),
        ],
      ),
    );
  }
}
