// ignore_for_file: deprecated_member_use, sized_box_for_whitespace, prefer_const_constructors, non_constant_identifier_names, duplicate_ignore, avoid_types_as_parameter_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sms_autofill/sms_autofill.dart';
import '../responsive/responsive_helper.dart';
import '../utilities/colors_code.dart';
import '../utilities/images.dart';
import '../utilities/styles.dart';
import '../widget/customs_label.dart';
import '../widget/customs_submit_button.dart';

// ignore: must_be_immutable
class OtpVerifyForRegistration extends StatelessWidget {
  OtpVerifyForRegistration({super.key});

  // RegistertController registertController = Get.put(RegistertController());

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () {
          return Future.value(true);
        },
        child: Scaffold(
            backgroundColor: ColorsCode.page_background_color,
            // appBar: ResponsiveHelper.isDesktop(context)
            //     ? const WebMenuBar()
            //     : AppBar(
            //         centerTitle: true,
            //         backgroundColor: ColorsCode.primary_color,
            //         bottomOpacity: 0.0,
            //         elevation: 0.0,
            //         leading: IconButton(
            //           onPressed: () => Get.back(),
            //           // onPressed: () => signInController.showExitWarning(),
            //           icon: Icon(Icons.arrow_back_ios_rounded,
            //               color: Theme.of(context).textTheme.bodyText1!.color),
            //         ),
            //       ),

            body: SafeArea(
                child: Container(
                    height: double.infinity,
                    width: double.infinity,
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ResponsiveHelper.isLandScriptMode(context)
                              ? Style.distan_size10
                              : Style.distan_size20,
                          const CustomLabelText(
                            text: 'Phone Number Verification',
                            style: Style.robotoHeader20primaryColor,
                          ),
                          Style.distan_size15,
                          Image.asset(
                            Images.verification_logo,
                            height: ResponsiveHelper.isLandScriptMode(context)
                                ? MediaQuery.of(context).size.height * .12
                                : MediaQuery.of(context).size.height * .15,
                            fit: BoxFit.contain,
                            width: MediaQuery.of(context).size.width * 0.4,
                          ),
                          Style.distan_size10,
                          const CustomLabelText(
                            text: 'Verification code',
                            style: Style.robotoHeader30,
                          ),
                          Style.distan_size5,
                          CustomLabelText(
                            text:
                                'We sent the verification code to your Number.',
                            style: Style.text_style_primary,
                          ),
                          Style.distan_size15,
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 5),
                            child: PinFieldAutoFill(
                                decoration: BoxLooseDecoration(
                                    radius: const Radius.circular(5.0),
                                    bgColorBuilder: const FixedColorBuilder(
                                        ColorsCode.page_background_color),
                                    strokeColorBuilder: const FixedColorBuilder(
                                        ColorsCode.primary_color),
                                    gapSpace: 10),
                                textInputAction: TextInputAction.done,
                                // controller:
                                //     registertController.otpEditingController,
                                codeLength: 6,
                                autoFocus: true,
                                // ignore: non_constant_identifier_names
                                onCodeSubmitted: (ValuData) {
                                  print(ValuData);
                                  // registertController.otpRegisterFunction();
                                },
                                // currentCode:
                                //     registertController.messageOtpCode.value,
                                // onCodeChanged: (code) {
                                //   registertController.messageOtpCode.value =
                                //       code!;
                                //   registertController.countdownController
                                //       .pause();
                                //   if (code.length == 6) {
                                //     // To perform some operation
                                //   }
                                //},
                              ),
                          ),
                          Style.distan_size5,
                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.center,
                          //   children: [
                          //     Center(
                          //         child: CustomtWinkwellButton(
                          //             text1: "Don’t receive OTP? ",
                          //             text2: "",
                          //             style1: Style.robotoRegular,
                          //             style2: Style.text_style_primary,
                          //             // ignore: avoid_print
                          //             onPressed: () => (print("aaaa")))),
                          //     Countdown(
                          //       seconds: 60,
                          //       build: (BuildContext, double) {
                          //         return Text(double.toString());
                          //       },
                          //     )
                          //   ],
                          // ),
                          Style.distan_size2,
                          CustomSubmitButton(
                              text: "Verify",
                              style: Style.submit_button_style,
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 10),
                              color: ColorsCode.submit_button_primary_color,
                              onPressed: () {
                               // registertController.otpRegisterFunction();
                              },
                              booldata: true,
                              leftpad: 20,
                              rightpad: 20,
                              borderCircular: 10),
                          // Countdown(
                          //   controller: registertController.countdownController,
                          //   seconds: 15,
                          //   interval: const Duration(milliseconds: 1000),
                          //   build: (context, currentRemainingTime) {
                          //     if (currentRemainingTime == 0.0) {
                          //       return GestureDetector(
                          //         onTap: () {
                          //           // write logic here to resend OTP
                          //         },
                          //         child: Container(
                          //           alignment: Alignment.center,
                          //           padding: const EdgeInsets.only(
                          //               left: 14,
                          //               right: 14,
                          //               top: 14,
                          //               bottom: 14),
                          //           decoration: BoxDecoration(
                          //               borderRadius: const BorderRadius.all(
                          //                 Radius.circular(10),
                          //               ),
                          //               border: Border.all(
                          //                   color: Colors.blue, width: 1),
                          //               color: Colors.blue),
                          //           width: context.width,
                          //           child: const Text(
                          //             "Resend OTP",
                          //             style: TextStyle(
                          //                 fontSize: 14,
                          //                 fontWeight: FontWeight.bold,
                          //                 color: Colors.white),
                          //           ),
                          //         ),
                          //       );
                          //     } else {
                          //       return Container(
                          //         alignment: Alignment.center,
                          //         padding: const EdgeInsets.only(
                          //             left: 14, right: 14, top: 14, bottom: 14),
                          //         decoration: BoxDecoration(
                          //           borderRadius: const BorderRadius.all(
                          //             Radius.circular(10),
                          //           ),
                          //           border: Border.all(
                          //               color: Colors.blue, width: 1),
                          //         ),
                          //         width: context.width,
                          //         child: Text(
                          //             "Wait |${currentRemainingTime
                          //                 .toString()
                          //                 .length == 6
                          //                 ? " ${currentRemainingTime.toString()
                          //                 .substring(0, 2)}"
                          //                 : " ${currentRemainingTime.toString()
                          //                 .substring(0, 1)}"}",
                          //             style: const TextStyle(fontSize: 16)),
                          //       );
                          //     }
                          //   },
                          // ),
                        ],
                      ),
                    )))));
  }
}
