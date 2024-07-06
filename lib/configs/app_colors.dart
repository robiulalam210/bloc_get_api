import 'package:flutter/material.dart';

class AppColors{
  static const Color seed = Color(0xff339966);

  static Color systemBg(context) => Theme.of(context).scaffoldBackgroundColor;
  static Color error(context) => Theme.of(context).colorScheme.error;
  static const Color grey = Color(0xff848483 );
  static const Color card = Color(0xfff3fbfe);
  static const Color cardBorder = Color(0xffe1f6fd);
  static const Color white = Colors.white;

  //avatar bg
  static LinearGradient avatarBG = LinearGradient(
      begin: Alignment.topLeft,
      end: const Alignment(0.80, 0.80),
      colors: [
        Colors.pink.shade50,
        Colors.blue.shade50,
      ]);

}