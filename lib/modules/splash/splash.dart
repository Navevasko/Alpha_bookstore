import 'package:alpha_bookstore/shared/theme/app_colors.dart';
import 'package:alpha_bookstore/shared/theme/app_images.dart';
import "package:flutter/material.dart";

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  Future<void> pushHome(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 3)).then(
      (value) {
        Navigator.of(context).pushNamed("/home");
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    pushHome(context);
    return Scaffold(
        backgroundColor: AppColors.primary,
        body: Center(
            child: SizedBox(
                height: 300,
                width: 300,
                child: Image.asset(AppImages.splash))));
  }
}
