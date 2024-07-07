// ignore_for_file: deprecated_member_use, avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sms_autofill/sms_autofill.dart';

import '../utilities/colors_code.dart';
import '../utilities/images.dart';
import '../utilities/styles.dart';
import '../widget/custom_text_field_password.dart';
import '../widget/customs_submit_button.dart';

// ignore: must_be_immutable
class OtpSendForRegitration extends StatelessWidget {
  OtpSendForRegitration({super.key});
  // RegistertController registertController = Get.put(RegistertController());
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () {
          return Future.value(true);
        },
        child: Scaffold(
          backgroundColor: ColorsCode.page_background_color,
          body: SafeArea(
              child: Container(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    Images.logo,
                    height: MediaQuery.of(context).size.height * .15,
                    width: MediaQuery.of(context).size.width * .4,
                  ),
                  CustomTextFieldPassword(
                    baseColor: ColorsCode.text_field_base_colors,
                    borderColor: ColorsCode.text_border_color,
                    errorColor: ColorsCode.text_field_error_colors,
                    //controller: registertController.phoneController,
                    hint: "Mobile number",
                    inputType: TextInputType.number,

                    icon: Icon(
                      Icons.phone,
                      color: ColorsCode.hint_text_color,
                    ),
                    eyesIcon: false,
                    // validator: Validator.validateEmail,
                  ),
                  Style.distan_size10,
                  CustomSubmitButton(
                      text: "Send OTP",
                      style: Style.submit_button_style,
                      padding: const EdgeInsets.only(top: 15, bottom: 15),
                      color: ColorsCode.submit_button_primary_color,
                      onPressed: ()async {
                        print("aaaaaaaa"+await SmsAutoFill().getAppSignature);
                      //  registertController.register_otp_sendFunction();
                      },
                      booldata: true,
                      leftpad: 20,
                      rightpad: 20,
                      borderCircular: 12),
                  Style.distan_size10,
                  Style.distan_size10,
                  // Center(
                  //   child: CustomtWinkwellButton(
                  //       text1: "Already have an account ?  ",
                  //       text2: "Log In",
                  //       style1: Style.robotoRegular,
                  //       style2: Style.text_style,
                  //       onPressed: () =>
                  //           (Get.toNamed(RouteManeger.mobileSignIn))),
                  // )
                ]),
          )),
        ));
  }
}
