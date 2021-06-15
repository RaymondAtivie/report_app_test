import 'package:flutter/material.dart';

import '../widgets/card_data_metric.dart';
import '../widgets/contact_tile.dart';
import '../widgets/header_title.dart';
import '../widgets/message_button.dart';
import '../widgets/reciept_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          const SizedBox(height: 24),
          const HeaderTitle(),
          const SizedBox(height: 24),
          const CardDataMetric(),
          const SizedBox(height: 24),
          const CardDataMetric(),
          const SizedBox(height: 24),
          const ContactTile(name: "Omar Catbi", leading: RecieptButton()),
          const SizedBox(height: 24),
          const ContactTile(
            name: "Omar Catbi",
            price: "300",
            leading: MessageButton(),
          ),
          const SizedBox(height: 24),
          const ContactTile(name: "Omar Catbi", price: "300"),
          const SizedBox(height: 24),
          Row(
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
          )
        ],
      ),
    );
  }
}
