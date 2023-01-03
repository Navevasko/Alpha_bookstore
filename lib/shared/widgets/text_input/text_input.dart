import "package:flutter/material.dart";
import '../../theme/app_colors.dart';
import '../../theme/text_styles.dart';

class TextInput extends StatelessWidget {
  final String hint;
  final IconData? icon;
  final Color? iconColor;
  final void Function()? iconOnPressed;
  final String? initialValue;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final void Function(String value) onChanged;
  final TextInputType keyboardType;
  const TextInput({
    super.key,
    this.icon,
    this.iconColor,
    this.iconOnPressed,
    this.initialValue,
    this.validator,
    this.controller,
    required this.keyboardType,
    required this.onChanged,
    required this.hint,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.fromLTRB(25, 10, 25, 10),
      child: Container(
        width: size.width * 0.85,
        height: size.height * 0.07,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: AppColors.gray)),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: TextFormField(
                  style: TextStyles.normalText,
                  keyboardType: keyboardType,
                  onChanged: onChanged,
                  decoration: InputDecoration(
                    hintText: hint,
                    hintStyle: TextStyles.normalText,
                    contentPadding: EdgeInsets.zero,
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            IconButton(
                onPressed: iconOnPressed,
                icon: Icon(
                  icon,
                  color: iconColor ?? AppColors.gray,
                )),
          ],
        ),
      ),
    );
  }
}

// Center(
          // child: Padding(
          //   padding: const EdgeInsets.only(left: 15),
          //   child: TextFormField(
          //     style: TextStyles.normalText,
          //     keyboardType: keyboardType,
          //     onChanged: onChanged,
          //     decoration: InputDecoration(
          //       hintText: hint,
          //       hintStyle: TextStyles.normalText,
          //       contentPadding: EdgeInsets.zero,
          //       border: InputBorder.none,
          //     ),
          //   ),
          // ),
//         ),
