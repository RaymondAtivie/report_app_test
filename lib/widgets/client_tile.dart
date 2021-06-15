import 'package:flutter/material.dart';

class ClientTile extends StatelessWidget {
  final Widget? leading;
  final String name;
  final String? imageUrl;
  final String? price;

  const ClientTile({
    Key? key,
    this.leading,
    required this.name,
    this.imageUrl,
    this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      shadowColor: Colors.black.withOpacity(0.50),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Row(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    width: 60,
                    height: 65,
                  ),
                  Positioned(
                    left: 6,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(8),
                          ),
                        ),
                        width: 60,
                        height: 65,
                        child: Image.network(
                          imageUrl ??
                              "https://randomuser.me/api/portraits/men/75.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 18),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  const SizedBox(height: 4),
                  if (price != null)
                    Text(
                      "$price \$",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).primaryColor.withOpacity(0.8),
                      ),
                    ),
                  const SizedBox(height: 12),
                ],
              ),
              const Spacer(),
              if (leading != null) leading!
            ],
          ),
        ),
      ),
    );
  }
}
