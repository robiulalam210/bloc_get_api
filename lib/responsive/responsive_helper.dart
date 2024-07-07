import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class ResponsiveHelper {
  static bool isMobilePhone() {
    if (!kIsWeb) {
      return true;
    } else {
      return false;
    }
  }

  static bool isWeb() {
    return kIsWeb;
  }

  static bool isMobile(context) {
    final size = MediaQuery.of(context).size.width;

    if (size < 650 || !kIsWeb) {
      return true;
    } else {
      return false;
    }
  }

  static bool isLandScriptMode(context) {
    final size = MediaQuery.of(context).size.width;
    if (
    size == 568 ||
    size == 640 ||
        size == 667 ||
        size == 732 ||
        size == 736 ||
        size == 740 ||
        size == 800 ||
        size == 812 ||
        size == 824 ||
        size == 844 ||
        size == 847 ||
        size == 853 ||
        size == 883 ||
        size == 895 ||
        size == 926 ||
        size == 960 ||
        size >= 640 && size <= 800 ||
        size >= 720 && size <= 800) {
      return true;
    } else {
      return false;
    }
  }

  static bool isTab(context) {
    final size = MediaQuery.of(context).size.width;
    if (size >= 810 && size <= 1200) {
      return true;
    } else {
      return false;
    }
  }

  static bool isIphone12(context) {
    final size = MediaQuery.of(context).size.width;
    if (size < 1366 && size >= 1024) {
      return true;
    } else {
      return false;
    }
  }

  static bool isDesktop(context) {
    final size = MediaQuery.of(context).size.width;
    if (size >= 1300) {
      return true;
    } else {
      return false;
    }
  }
}
