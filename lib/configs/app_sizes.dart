import 'package:flutter/widgets.dart';

class AppSizes{
  static const double bodyPadding = 15;
  static const double normalText = 13;
  static const double subText = 12;

  static double height(context) => MediaQuery.sizeOf(context).height;
  static double width(context) => MediaQuery.sizeOf(context).width;
}