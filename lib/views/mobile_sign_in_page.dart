// ignore_for_file: deprecated_member_use, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../responsive/responsive_helper.dart';
import '../utilities/colors_code.dart';
import '../utilities/images.dart';
import '../utilities/styles.dart';
import '../widget/custom_label_for_text_field.dart';
import '../widget/custom_text_button.dart';
import '../widget/custom_text_field_password.dart';
import '../widget/custom_winkwell_button.dart';
import '../widget/customs_submit_button.dart';

class MobileSignInView extends StatelessWidget {
  const MobileSignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //
            Center(
                child: Image.asset(
              Images.logo,
              height: ResponsiveHelper.isLandScriptMode(context)
                  ? MediaQuery.of(context).size.height * .12
                  : MediaQuery.of(context).size.height * .30,
              // MediaQuery.of(context).size.height * .30,
              width: ResponsiveHelper.isLandScriptMode(context)
                  ? MediaQuery.of(context).size.width * .20
                  : MediaQuery.of(context).size.width * .40,
              fit: BoxFit.contain,
            )),

            // // Style.distan_size10,
            const CustomLabelField(
              text: "Phone Number",
              style: Style.robotoRegular,
            ),
            CustomTextFieldPassword(
              baseColor: ColorsCode.text_field_base_colors,
              borderColor: ColorsCode.text_border_color,
              errorColor: ColorsCode.text_field_error_colors,
              // controller: loginController.phoneNumberControllerLogin,
              hint: "Phone number",
              inputType: TextInputType.number,
              icon: const Icon(
                Icons.phone,
                color: ColorsCode.icon_primary_colors,
              ),
              eyesIcon: false,
              onChangedFunction: null,
              // validator: Validator.validateEmail,
            ),
            Style.distan_size10,
            const CustomLabelField(
              text: "Password",
              style: Style.robotoRegular,
            ),
            CustomTextFieldPassword(
              baseColor: ColorsCode.text_field_base_colors,
              borderColor: ColorsCode.text_border_color,
              errorColor: ColorsCode.text_field_error_colors,
              //  controller: loginController.passwordController,
              hint: "........",
              inputType: TextInputType.text,

              icon: const Icon(
                Icons.lock,
                color: ColorsCode.icon_primary_colors,
              ),
              eyesIcon: true,
              // validator: Validator.validateEmail,
              onChangedFunction: null,
            ),
            CustomTextButton(
              text: "Forget Password?",
              style: Style.text_style_primary,
              padding: const EdgeInsets.only(right: 15),
              // ignore: avoid_print
              onPressedController: () {
                //  Get.toNamed(RouteManeger.mobilePhoneVerificationLogin);
              },
              alignment: Alignment.centerRight,
            ),
            CustomSubmitButton(
                text: "Sign In",
                style: Style.submit_button_style,
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                color: ColorsCode.submit_button_primary_color,
                onPressed: () {
                  //loginController.login();
                  // Get.toNamed(RouteManeger.dashboard);
                },
                booldata: true,
                leftpad: 20,
                rightpad: 20,
                borderCircular: 8),
            Style.distan_size10,
            Center(
                child: CustomtWinkwellButton(
                    text1: "Don't have an account ?  ",
                    text2: "Sign Up",
                    style1: Style.robotoRegular,
                    style2: Style.text_style,
                    onPressed: () {
                      //    Get.toNamed(RouteManeger.otpsendForRegistration);
                    })),
            Style.distan_size15,
          ],
        ),
      ),
    );
  }
}

