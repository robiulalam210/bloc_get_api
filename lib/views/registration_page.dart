// ignore_for_file: deprecated_member_use, prefer_const_constructors, invalid_use_of_protected_member

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utilities/colors_code.dart';
import '../utilities/styles.dart';
import '../widget/custom_label_for_text_field_rad_star.dart';
import '../widget/custom_text_field.dart';
import '../widget/custom_text_field_password.dart';
import '../widget/customs_label.dart';



// ignore: must_be_immutable
class RegistrationPage extends StatelessWidget {
  RegistrationPage({super.key});



  @override
  Widget build(context) => WillPopScope(
      onWillPop: () {
        return Future.value(true);
      },
      child: Scaffold(
        backgroundColor: ColorsCode.page_background_color,
        body:  SafeArea(
                child: SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                  Style.distan_size20,
                  const Center(
                      child: CustomLabelText(
                    text: 'Registration',
                    style: Style.robotoHeader20primaryColor,
                  )),
                  Style.distan_size10,
                  CustomLabelFieldRed(
                    text: "Full Name ",
                    red: "*",
                    style: Style.robotoRegular,
                    style_red: Style.robotoRegularRed,
                  ),
                  CustomTextField(
                    baseColor: ColorsCode.text_field_base_colors,
                    borderColor: ColorsCode.text_border_color,
                    errorColor: ColorsCode.text_field_error_colors,
                    // controller: registertController.nameController,
                    hint: " Full name",
                    inputType: TextInputType.text,

                    eyesIcon: false,
                    // validator: Validator.validateEmail,
                  ),
                  CustomLabelFieldRed(
                    text: "Gender ",
                    red: "*",
                    style: Style.robotoRegular,
                    style_red: Style.robotoRegularRed,
                  ),
                  // Container(
                  //   margin:
                  //       EdgeInsets.only(left: 20, right: 20, top: 4, bottom: 4),
                  //   height: MediaQuery.of(context).size.height * 0.070,
                  //   alignment: Alignment.centerLeft,
                  //   decoration: BoxDecoration(
                  //       border: Border.all(
                  //         color: ColorsCode.hint_text_color,
                  //       ),
                  //       color: ColorsCode.page_background_color,
                  //       //E9F2F2
                  //       borderRadius: BorderRadius.circular(10),
                  //       // ignore: prefer_const_literals_to_create_immutables
                  //       boxShadow: [
                  //         BoxShadow(
                  //           color: Colors.black12,
                  //           blurRadius: 2,
                  //           offset: const Offset(0, 1),
                  //         )
                  //       ]),
                  //   child: Container(
                  //     padding: const EdgeInsets.only(right: 10, left: 0),
                  //     child: DropdownButtonHideUnderline(
                  //       child: DropdownButton2(
                  //         hint: registertController
                  //                     .genderChangeValue.value['gender']
                  //                     .toString() ==
                  //                 ""
                  //             ? Padding(
                  //                 padding: const EdgeInsets.only(left: 0),
                  //                 child: Text(
                  //                   'Select your Gender'.tr,
                  //                   style: Style.block_text_style,
                  //                 ),
                  //               )
                  //             : Text(
                  //                 registertController
                  //                     .genderChangeValue.value['gender']
                  //                     .toString(),
                  //                 style: Style.alltext_default_balck,
                  //               ),
                  //         isExpanded: true,
                  //         // iconSize: 30.0,
                  //         // icon: Icon(
                  //         //   Icons.arrow_drop_down,
                  //         //   color: ColorsCode.primary_color,
                  //         // ),
                  //         style: Style.alltext_default_balck,
                  //         items: registertController.genderListvalue.map(
                  //           (val) {
                  //             return DropdownMenuItem(
                  //                 // ignore: sort_child_properties_last
                  //                 child: Text(val['gender']!),
                  //                 value: val);
                  //           },
                  //         ).toList(),
                  //         onChanged: (val) {
                  //           registertController.selectgenderstatus(val);
                  //           // ignore: avoid_print
                  //         },
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  CustomLabelFieldRed(
                    text: "Date of Birth ",
                    red: "*",
                    style: Style.robotoRegular,
                    style_red: Style.robotoRegularRed,
                  ),
                  // CustomDatePickerButton(
                  //     baseColor: ColorsCode.text_field_base_colors,
                  //     borderColor: ColorsCode.text_border_color,
                  //     errorColor: ColorsCode.text_field_error_colors,
                  //     tittle: " DD-MM-YYYY",
                  //     style: Style.block_text_style,
                  //     controller: datePickerService.dateOfBirthController,
                  //     icon: const Icon(
                  //       Icons.calendar_today,
                  //       color: ColorsCode.icon_primary_colors,
                  //     )),
                  CustomLabelFieldRed(
                    text: "Blood Group ",
                    red: "*",
                    style: Style.robotoRegular,
                    style_red: Style.robotoRegularRed,
                  ),
                  // Container(
                  //   margin:
                  //       EdgeInsets.only(left: 20, right: 20, top: 4, bottom: 4),
                  //   height: MediaQuery.of(context).size.height * 0.070,
                  //   alignment: Alignment.centerLeft,
                  //   decoration: BoxDecoration(
                  //       border: Border.all(
                  //         color: ColorsCode.text_border_color,
                  //       ),
                  //       color: ColorsCode.page_background_color,
                  //       //E9F2F2
                  //       borderRadius: BorderRadius.circular(10),
                  //       // ignore: prefer_const_literals_to_create_immutables
                  //       boxShadow: [
                  //         BoxShadow(
                  //           color: Colors.black12,
                  //           blurRadius: 4,
                  //           offset: const Offset(0, 1),
                  //         )
                  //       ]),
                  //   child: Container(
                  //     padding: const EdgeInsets.only(right: 10, left: 0),
                  //     child: DropdownButtonHideUnderline(
                  //       child: DropdownButton2(
                  //         hint: registertController.bloodGroupChangeValueTest
                  //                     .value['group_name'] ==
                  //                 ""
                  //             ? Padding(
                  //                 padding: const EdgeInsets.only(left: 0),
                  //                 child: Text(
                  //                   'Select your BloodGroup'.tr,
                  //                   style: Style.block_text_style,
                  //                 ),
                  //               )
                  //             : Text(
                  //                 registertController.bloodGroupChangeValueTest
                  //                     .value['group_name']
                  //                     .toString(),
                  //                 style: Style.alltext_default_balck,
                  //               ),
                  //         isExpanded: true,
                  //         // iconSize: 30.0,
                  //         // icon: Icon(
                  //         //   Icons.arrow_drop_down,
                  //         //   color: ColorsCode.primary_color,
                  //         // ),
                  //         style: Style.alltext_default_balck,
                  //         items: registertController.blood_groupListvalue.map(
                  //           (val) {
                  //             return DropdownMenuItem(
                  //                 // ignore: sort_child_properties_last
                  //                 child: Text(val['group_name']!),
                  //                 value: val);
                  //           },
                  //         ).toList(),
                  //         onChanged: (val) {
                  //           registertController.selectblodstatus(val);
                  //           // ignore: avoid_print
                  //         },
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  CustomLabelFieldRed(
                    text: "Weight (Kg) ",
                    red: "*",
                    style: Style.robotoRegular,
                    style_red: Style.robotoRegularRed,
                  ),
                  CustomTextField(
                    baseColor: ColorsCode.text_field_base_colors,
                    borderColor: ColorsCode.text_border_color,
                    errorColor: ColorsCode.text_field_error_colors,
                    // controller: registertController.weightController,
                    hint: " Weight(Kg)".tr,
                    inputType: TextInputType.number,
                    icon: null,
                    eyesIcon: false,
                    // validator: Validator.validateEmail,
                  ),
                  CustomLabelFieldRed(
                    text: "Height ",
                    red: "*",
                    style: Style.robotoRegular,
                    style_red: Style.robotoRegularRed,
                  ),
                  // Row(
                  //   children: [
                  //     SizedBox(
                  //       width: Get.size.width * 0.50,
                  //       child: CustomTextField(
                  //         baseColor: ColorsCode.text_field_base_colors,
                  //         borderColor: ColorsCode.text_border_color,
                  //         errorColor: ColorsCode.text_field_error_colors,
                  //         // controller: registertController.hightControllerFit,
                  //         hint: " Feet".tr,
                  //         inputType: TextInputType.number,
                  //         icon: null,
                  //         eyesIcon: false,
                  //         // validator: Validator.validateEmail,
                  //       ),
                  //     ),
                  //     SizedBox(
                  //       width: Get.size.width * 0.50,
                  //       child: CustomTextField(
                  //         baseColor: ColorsCode.text_field_base_colors,
                  //         borderColor: ColorsCode.text_border_color,
                  //         errorColor: ColorsCode.text_field_error_colors,
                  //         // controller: registertController.hightControllerInch,
                  //         hint: " Inch".tr,
                  //         inputType: TextInputType.number,
                  //         icon: null,
                  //         eyesIcon: false,
                  //         // validator: Validator.validateEmail,
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  CustomLabelFieldRed(
                    text: "Nid ",
                    red: "*",
                    style: Style.robotoRegular,
                    style_red: Style.robotoRegularRed,
                  ),
                  CustomTextField(
                    baseColor: ColorsCode.text_field_base_colors,
                    borderColor: ColorsCode.text_border_color,
                    errorColor: ColorsCode.text_field_error_colors,
                    // controller: registertController.nidPassportController,
                    hint: " NID Number",
                    inputType: TextInputType.text,
                    icon: null,
                    eyesIcon: false,
                    // validator: Validator.validateEmail,
                  ),
                  CustomLabelFieldRed(
                    text: "Email ",
                    red: "*",
                    style: Style.robotoRegular,
                    style_red: Style.robotoRegularRed,
                  ),
                  CustomTextField(
                    baseColor: ColorsCode.text_field_base_colors,
                    borderColor: ColorsCode.text_border_color,
                    errorColor: ColorsCode.text_field_error_colors,
                    // controller: registertController.emailController,
                    hint: " ex@gmail.com",
                    inputType: TextInputType.emailAddress,
                    icon: null,
                    eyesIcon: false,
                    // validator: Validator.validateEmail,
                  ),
                  CustomLabelFieldRed(
                    text: "Password ",
                    red: "*",
                    style: Style.robotoRegular,
                    style_red: Style.robotoRegularRed,
                  ),
                  CustomTextFieldPassword(
                    baseColor: ColorsCode.text_field_base_colors,
                    borderColor: ColorsCode.text_border_color,
                    errorColor: ColorsCode.text_field_error_colors,
                    // controller: registertController.passwordController,
                    hint: "Password",
                    inputType: TextInputType.text,

                    icon: const Icon(
                      Icons.lock,
                      color: ColorsCode.icon_primary_colors,
                    ),
                    eyesIcon: true,
                    // validator: Validator.validateEmail,
                  ),
                  CustomLabelFieldRed(
                    text: "Confirm-Password ",
                    red: "*",
                    style: Style.robotoRegular,
                    style_red: Style.robotoRegularRed,
                  ),
                  CustomTextFieldPassword(
                    baseColor: ColorsCode.text_field_base_colors,
                    borderColor: ColorsCode.text_border_color,
                    errorColor: ColorsCode.text_field_error_colors,
                    // controller: registertController.confirmPassowrd,
                    hint: "Password",
                    inputType: TextInputType.text,
                    icon: const Icon(
                      Icons.lock,
                      color: ColorsCode.icon_primary_colors,
                    ),
                    eyesIcon: true,
                  ),
                  Style.distan_size10,
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(7),
                                border: Border.all(
                                    color: ColorsCode.primary_color, width: 2)),
                            height: 45,
                            width: 150,
                            child: Center(
                              child: Text(
                                "Cancel",
                                style: TextStyle(
                                    color: ColorsCode.icon_primary_colors),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                         //   registertController.userFunction();
                            //  Get.toNamed(RouteManeger.dashboard);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: ColorsCode.primary_color,
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(7),
                                border: Border.all(
                                    color: ColorsCode.primary_color, width: 3)),
                            height: 45,
                            width: 150,
                            child: const Center(
                              child: Text(
                                "Register",
                                style: TextStyle(
                                    color: ColorsCode.page_background_color),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Style.distan_size20,
                  Style.distan_size20,
                ]))),
      ));
}
