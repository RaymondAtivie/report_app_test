import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:report_app/repositories/client_repo.dart';

import '../screens/paid_clients_screen.dart';
import '../screens/pending_clients_screen.dart';
import '../screens/unpaid_clients_screen.dart';

class SidebarDrawer extends StatelessWidget {
  const SidebarDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Theme.of(context).accentColor,
        child: SafeArea(
          child: ListView(
            children: [
              const DrawerHeader(
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                ),
              ),
              _drawerItem(context, text: "Paid Clients", onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const PaidClientsScreen(),
                  ),
                );
              }),
              Divider(height: 0, color: Colors.grey[300]),
              _drawerItem(context, text: "Unpaid Clients", onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const UnpaidClientsScreen(),
                  ),
                );
              }),
              Divider(height: 0, color: Colors.grey[300]),
              _drawerItem(context, text: "Pending Clients", onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const PendingClientsScreen(),
                  ),
                );
              }),
              Divider(height: 0, color: Colors.grey[300]),
            ],
          ),
        ),
      ),
    );
  }

  Widget _drawerItem(BuildContext context,
      {required String text, void Function()? onTap}) {
    return ListTile(
      title: Text(
        text,
        style: const TextStyle(color: Colors.white),
      ),
      onTap: () {
        context.read(searchTermProvider).state = "";
        if (onTap != null) onTap();
      },
    );
  }
}
