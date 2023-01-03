import "package:flutter/material.dart";
import '../../theme/app_colors.dart';
import '../../theme/text_styles.dart';

class AuthButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final Color? color;
  final Border? border;
  final TextStyle? style;
  final EdgeInsets? padding;
  const AuthButton(
      {super.key,
      required this.onTap,
      required this.text,
      this.color,
      this.border,
      this.style,
      this.padding});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 50,
          width: size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: color ?? AppColors.primary,
            border: border ?? Border.all(color: Colors.white, width: 1),
          ),
          child: Center(
            child: Text(
              text,
              style: style ?? TextStyles.buttonTitleWhite,
            ),
          ),
        ),
      ),
    );
  }
}
