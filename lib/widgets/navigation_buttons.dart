import 'package:flutter/material.dart';

class NavigationButtons extends StatelessWidget {
  const NavigationButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        CircleAvatar(
          radius: 12,
          child: FittedBox(
            child: Icon(
              Icons.arrow_back_ios_new_rounded,
              size: 14,
            ),
          ),
        ),
        SizedBox(width: 19),
        CircleAvatar(
          radius: 12,
          child: FittedBox(
            child: Icon(
              Icons.arrow_forward_ios_rounded,
              size: 14,
            ),
          ),
        ),
      ],
    );
  }
}
