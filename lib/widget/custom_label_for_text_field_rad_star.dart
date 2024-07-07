import 'package:flutter/material.dart';

import '../responsive/responsive_helper.dart';

class CustomLabelFieldRed extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  final String? text;
  final String? red;
  // ignore: prefer_typing_uninitialized_variables
  final style;
  final style_red;

  const CustomLabelFieldRed({
    super.key,
    this.text,
    this.red,
    required this.style,
    required this.style_red,
  });
  @override
  // ignore: library_private_types_in_public_api
  _CustomLabelFieldState createState() => _CustomLabelFieldState();
}

class _CustomLabelFieldState extends State<CustomLabelFieldRed> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Padding(
    //  padding: const EdgeInsets.only(left: 22, right: 22, bottom: 2),
      padding: ResponsiveHelper.isTab(context)
          ? ResponsiveHelper.isIphone12(context)
              ? const EdgeInsets.only(left: 55)
              : const EdgeInsets.only(left: 45)
          : const EdgeInsets.only(left: 26),
      child: Row(
        children: [
          Text(
            widget.text.toString(),
            style: widget.style, //596970
          ),Text(
            widget.red.toString(),
            style: widget.style_red, //596970
          ),
        ],
      ),
    );
  }
}
