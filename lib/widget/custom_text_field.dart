import 'package:flutter/material.dart';

import '../utilities/colors_code.dart';
import '../utilities/styles.dart';


class CustomTextField extends StatefulWidget {
  final String? hint;
  final TextEditingController? controller;
  final Color? baseColor;
  final Color? borderColor;
  final Color? errorColor;
  final TextInputType? inputType;
  final Icon? icon;
  final bool? eyesIcon;

  // ignore: prefer_typing_uninitialized_variables
  final onChangedFunction;

  // final Function? validator;
  final Function? onChanged;

  const CustomTextField({
    super.key,
    this.hint,
    this.controller,
    this.onChanged,
    this.baseColor,
    this.borderColor,
    this.errorColor,
    this.inputType,
    this.eyesIcon,
    this.onChangedFunction,
    this.icon,
  });

  @override
  // ignore: library_private_types_in_public_api
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late Color currentColor;
  bool _passwordVisible = false;

  @override
  void initState() {
    super.initState();
    currentColor = ColorsCode.text_border_color;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 0),
        child: Center(
          child: SizedBox(
            // height: ResponsiveHelper.isMobile(context)
            //     ? ResponsiveHelper.isTab(context)
            //         ? ResponsiveHelper.isLandScriptMode(context)
            //             ? MediaQuery.of(context).size.height * .16
            //             : MediaQuery.of(context).size.height * .09
            //         : ResponsiveHelper.isLandScriptMode(context)
            //             ? MediaQuery.of(context).size.height * .16
            //             : MediaQuery.of(context).size.height * .07
            //     : ResponsiveHelper.isWeb()
            //         ? MediaQuery.of(context).size.height * .06
            //         : MediaQuery.of(context).size.height * .16,
            // width: MediaQuery.of(context).size.width,
            child: Card(
              elevation: 0.0,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: BorderSide(color: currentColor, width: 2.0),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: Center(
                  child: TextField(
                      obscureText:
                          widget.eyesIcon == true ? !_passwordVisible : false,
                      onChanged: (valuData) {
                        widget.onChangedFunction(valuData);
                        // print(valuData);
                        // widget.onChanged!(valuData);
                        // setState(() {
                        //   if (text.isEmpty) {
                        //     currentColor = widget.errorColor!;
                        //   } else {
                        //     currentColor = widget.baseColor!;
                        //   }
                        // });
                      },
                      style: Style.text_filed_style,
                      keyboardType: widget.inputType,
                      controller: widget.controller,
                      //textAlign: TextAlign.start,
                      //textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.only(left: 12),
                          hintStyle: Style.text_hind_style,
                          border: InputBorder.none,
                          hintText: widget.hint,
                          prefixIcon: widget.icon,
                          suffixIcon: widget.eyesIcon == true
                              ? IconButton(
                                  icon: Icon(
                                      _passwordVisible
                                          ? Icons.remove_red_eye_outlined
                                          : Icons.visibility_off,
                                      color: ColorsCode
                                          .hint_text_color //Theme.of(context).primaryColorDark,
                                      ),
                                  onPressed: () {
                                    setState(() {
                                      _passwordVisible = !_passwordVisible;
                                    });
                                  },
                                )
                              : null)),
                ),
              ),
            ),
          ),
        ));
  }
}
