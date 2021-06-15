import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MaxWidthContainer extends StatelessWidget {
  final Widget child;
  final double max;

  const MaxWidthContainer({
    Key? key,
    required this.child,
    this.max = 300,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: ConstrainedBox(
      constraints: BoxConstraints(maxWidth: max),
      child: child,
    ));
  }
}
