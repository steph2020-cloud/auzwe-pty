import 'package:flutter/material.dart';
import 'package:auzwepty/values/values.dart';
import 'package:url_launcher/link.dart';

import 'auzwepty_button.dart';

class AuzweptyButtonLink extends StatelessWidget {
  const AuzweptyButtonLink({
    Key? key,
    required this.buttonTitle,
    required this.url,
    this.linkTarget = LinkTarget.blank,
    this.buttonColor = AppColors.black400,
    this.builder,
    this.width = Sizes.WIDTH_150,
    this.height = Sizes.HEIGHT_60,
  }) : super(key: key);

  final String url;
  final String buttonTitle;
  final LinkTarget linkTarget;

  final Color buttonColor;
  final double? width;
  final double? height;
  final LinkWidgetBuilder? builder;

  @override
  Widget build(BuildContext context) {
    return Link(
      uri: Uri.parse(url),
      target: linkTarget,
      builder: (context, followLink) {
        return AuzweptyButton(
          width: width,
          height: height,
          buttonTitle: buttonTitle,
          buttonColor: buttonColor,
          onPressed: () => followLink,
        );
      },
    );
  }
}
