import 'package:flutter/material.dart';

import '../screens/paid_clients_screen.dart';

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
              _drawerItem(
                  text: "Paid Clients",
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const PaidClientsScreen(),
                      ),
                    );
                  }),
              Divider(color: Colors.grey[300]),
              _drawerItem(text: "Unpaid Clients"),
              Divider(color: Colors.grey[300]),
              _drawerItem(text: "Pending Clients"),
              Divider(color: Colors.grey[300]),
            ],
          ),
        ),
      ),
    );
  }

  Widget _drawerItem({required String text, void Function()? onTap}) {
    return ListTile(
      title: Text(
        text,
        style: const TextStyle(color: Colors.white),
      ),
      onTap: onTap,
    );
  }
}
