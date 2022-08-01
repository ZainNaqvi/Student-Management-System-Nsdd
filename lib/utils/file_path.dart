import 'package:flutter/material.dart';

class FilePath {
  static String topRightCornerBg(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? 'assets/svgs/top_right_corner_light_bg.svg'
        : 'assets/svgs/top_right_corner_dark_bg.svg';
  }

  static String bottomRightCornerBg(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? 'assets/svgs/bottom_right_corner_light_bg.svg'
        : 'assets/svgs/bottom_right_corner_dark_bg.svg';
  }

  static String homeTopBg(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? 'assets/svgs/home_top_light_bg.svg'
        : 'assets/svgs/home_top_dark_bg.svg';
  }

  static String profileTopBg(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? 'assets/svgs/profile_top_light_bg.svg'
        : 'assets/svgs/profile_top_light_bg.svg';
  }

  static String loader(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? 'assets/lotties/loader_light.json'
        : 'assets/lotties/loader_dark.json';
  }

  static const nutechLogo = 'assets/images/logo.png';
}
