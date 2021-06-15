import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MessageButton extends StatelessWidget {
  final void Function()? onTap;

  const MessageButton({
    Key? key,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => const MessagesBottomSheet(),
        );

        if (onTap != null) onTap!();
      },
      child: Card(
        elevation: 4,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        shadowColor: Colors.black.withOpacity(0.50),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: SvgPicture.asset("assets/icons/message.svg", width: 30),
        ),
      ),
    );
  }
}

class MessagesBottomSheet extends StatelessWidget {
  const MessagesBottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: Colors.white,
      child: const Center(
        child: Text("Message dialogs Here"),
      ),
    );
  }
}
