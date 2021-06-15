import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../repositories/client_repo.dart';
import '../utils/max_width_container.dart';
import '../utils/responsive_layout.dart';
import '../widgets/card_data_metric.dart';
import '../widgets/client_tile.dart';
import '../widgets/header_title.dart';
import '../widgets/navigation_buttons.dart';
import '../widgets/reciept_button.dart';
import '../widgets/search_text_field.dart';
import '../widgets/sidebar_drawer.dart';

class PaidClientsScreen extends StatelessWidget {
  const PaidClientsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SidebarDrawer(),
      appBar: AppBar(),
      body: const ResponsiveLayout(
        potrait: PotraitArrangement(),
        landscape: LandscapeArrangement(),
      ),
    );
  }
}

class PotraitArrangement extends ConsumerWidget {
  const PotraitArrangement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final clients = watch(paidClientsProvider).state;

    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      children: [
        const SizedBox(height: 24),
        const HeaderTitle(title: "Paid Clients"),
        const SizedBox(height: 24),
        CardDataMetric(
          total: 1200,
          noOfClients: clients.length,
        ),
        const SizedBox(height: 24),
        const SearchTextField(),
        const SizedBox(height: 24),
        for (final client in clients)
          ClientTile(
            name: client.name,
            imageUrl: client.image,
            leading: const RecieptButton(),
          ),
        const SizedBox(height: 24),
        const NavigationButtons(),
        const SizedBox(height: 48),
      ],
    );
  }
}

class LandscapeArrangement extends ConsumerWidget {
  const LandscapeArrangement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final clients = watch(paidClientsProvider).state;

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: [
            MaxWidthContainer(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 24),
                    const HeaderTitle(title: "Paid"),
                    const SizedBox(height: 24),
                    CardDataMetric(
                      total: 1200,
                      noOfClients: clients.length,
                    ),
                    const SizedBox(height: 24),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 24),
            Expanded(
                child: ListView(
              children: [
                const SizedBox(height: 24),
                const SearchTextField(),
                const SizedBox(height: 24),
                for (final client in clients)
                  ClientTile(
                    name: client.name,
                    imageUrl: client.image,
                    leading: const RecieptButton(),
                  ),
                const SizedBox(height: 24),
                const NavigationButtons(),
                const SizedBox(height: 48),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
