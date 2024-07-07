
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../utilities/colors_code.dart';
import '../utilities/styles.dart';


// ignore: must_be_immutable
class DashboadPage extends StatelessWidget {
  DashboadPage({super.key});

  final bool _canExit = GetPlatform.isWeb ? true : false;
  // SignInSignUpCustomsController signInController =
  //     Get.put(SignInSignUpCustomsController());

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (_canExit) {

          return Future.value(false);
        } else {
          // signInController.showExitWarning();
          return Future.value(false);
        }
      },
      child: Obx(
        () => SafeArea(
            child: RefreshIndicator(
                color: ColorsCode.primary_color,
                onRefresh: () {

                  return Future.value(true);
                },
                child: Scaffold(
                    backgroundColor: ColorsCode.page_background_color,
                    appBar: AppBar(
                      backgroundColor: ColorsCode.primary_color,
                      bottomOpacity: 0.0,
                      elevation: 0.0,
                      centerTitle: true,

                      actions: <Widget>[
                        GestureDetector(
                          onTap: () {

                          },
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Image.asset(
                              "assets/images/notification.png",
                              width: Get.size.width * .08,
                              height: Get.size.height * .05,
                            ),
                          ),
                        ),
                        Style.widthdistan_size5,
                         Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: CircleAvatar(
                                  maxRadius: 15,
                                  backgroundImage: AssetImage(
                                    ("assets/images/picc.png"),
                                  ),
                                ),
                              ),
                        Style.widthdistan_size10
                      ],
                    ),
                    body: RawScrollbar(
                      thumbColor: ColorsCode.primary_color,
                      thumbVisibility: true,
                      thickness: 07,
                      radius: Radius.circular(8),
                      child: SingleChildScrollView(
                        physics: AlwaysScrollableScrollPhysics(),
                        // ignore: sized_box_for_whitespace
                        child: Container(
                          width: double.infinity,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Style.distan_size10,



                            ],
                          ),
                        ),
                      ),
                    )))),
      ),
    );
  }
}
