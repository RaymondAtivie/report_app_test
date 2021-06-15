import 'package:flutter/material.dart';
import 'package:report_app/utils/max_width_container.dart';
import 'package:report_app/utils/responsive_layout.dart';
import 'package:report_app/widgets/navigation_buttons.dart';
import 'package:report_app/widgets/search_text_field.dart';

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
      body: const ResponsiveLayout(
        potrait: PotraitArrangement(),
        landscape: LandscapeArrangement(),
      ),
    );
  }
}

class PotraitArrangement extends StatelessWidget {
  const PotraitArrangement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      children: const [
        SizedBox(height: 24),
        HeaderTitle(),
        SizedBox(height: 24),
        CardDataMetric(),
        SizedBox(height: 24),
        SearchTextField(),
        SizedBox(height: 24),
        ContactTile(name: "Omar Catbi", leading: RecieptButton()),
        SizedBox(height: 24),
        ContactTile(
          name: "Omar Catbi",
          price: "300",
          leading: MessageButton(),
        ),
        SizedBox(height: 24),
        ContactTile(name: "Omar Catbi", price: "300"),
        SizedBox(height: 24),
        NavigationButtons(),
        SizedBox(height: 48),
      ],
    );
  }
}

class LandscapeArrangement extends StatelessWidget {
  const LandscapeArrangement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2),
        child: Row(
          children: [
            MaxWidthContainer(
              child: SingleChildScrollView(
                child: Column(
                  children: const [
                    SizedBox(height: 24),
                    HeaderTitle(),
                    SizedBox(height: 24),
                    CardDataMetric(),
                    SizedBox(height: 24),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 24),
            Expanded(
                child: ListView(
              children: const [
                SizedBox(height: 24),
                SearchTextField(),
                SizedBox(height: 24),
                ContactTile(name: "Omar Catbi", leading: RecieptButton()),
                SizedBox(height: 24),
                ContactTile(
                  name: "Omar Catbi",
                  price: "300",
                  leading: MessageButton(),
                ),
                SizedBox(height: 24),
                ContactTile(name: "Omar Catbi", price: "300"),
                SizedBox(height: 24),
                NavigationButtons(),
                SizedBox(height: 48),
              ],
            )),
          ],
        ),
      ),
    );

    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      children: [
        Row(
          children: [
            MaxWidthContainer(
              child: Column(
                children: const [
                  SizedBox(height: 24),
                  HeaderTitle(),
                  SizedBox(height: 24),
                  CardDataMetric(),
                  SizedBox(height: 24),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
