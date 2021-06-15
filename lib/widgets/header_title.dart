import 'package:flutter/material.dart';

class HeaderTitle extends StatelessWidget {
  const HeaderTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(19)),
      ),
      shadowColor: Colors.black.withOpacity(0.50),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Text(
            "PAID",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w700,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
