import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../theme_data.dart';

class RecieptButton extends StatelessWidget {
  final void Function()? onTap;

  const RecieptButton({
    Key? key,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Reciept",
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey[400],
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 6),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: brandblueAccent[100],
            ),
            child: SvgPicture.asset(
              "assets/icons/clip.svg",
              width: 24,
            ),
          ),
        ],
      ),
    );
  }
}
