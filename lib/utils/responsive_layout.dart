import 'package:flutter/material.dart';

import 'breakpoints.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget potrait;
  final Widget? landscape;

  const ResponsiveLayout({
    Key? key,
    required this.potrait,
    this.landscape,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, dimens) {
      if (dimens.maxWidth < kLandscapeBreakpoint) {
        return potrait;
      } else {
        return landscape ?? potrait;
      }
    });
  }
}
