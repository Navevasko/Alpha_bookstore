import 'package:alpha_bookstore/modules/book_info/book_info.dart';
import 'package:alpha_bookstore/modules/home/home_page.dart';
import 'package:alpha_bookstore/modules/login/login_page.dart';
import 'package:alpha_bookstore/modules/on_boarding/on_boarding_page.dart';
import 'package:alpha_bookstore/modules/register/register_page.dart';
import 'package:alpha_bookstore/modules/splash/splash.dart';
import 'package:alpha_bookstore/shared/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alpha Bookstore',
      theme: ThemeData(
        primaryColor: AppColors.primary,
        primarySwatch: Colors.red,
      ),
      initialRoute: "/splash",
      routes: {
        // '/splash': Splash
        '/splash': (context) => const SplashPage(),
        '/onBoard': (context) => const OnBoardingPage(),
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/home': (context) => const HomePage(),
        '/bookInfo': (context) => const BookInfoPage(),
      },
    );
  }
}
