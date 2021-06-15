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
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => const RecieptBottomSheet(),
        );

        if (onTap != null) onTap!();
      },
      child: Container(
        color: Colors.white,
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
      ),
    );
  }
}

class RecieptBottomSheet extends StatelessWidget {
  const RecieptBottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: Colors.white,
      child: const Center(
        child: Text("Reciept Information Here"),
      ),
    );
  }
}
