import 'package:flutter/material.dart';

class CardDataMetric extends StatelessWidget {
  final Color color;
  final int total;
  final int noOfClients;

  const CardDataMetric({
    Key? key,
    this.color = Colors.green,
    required this.total,
    required this.noOfClients,
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
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              SizedBox(
                width: 100,
                child: Stack(
                  children: [
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: CircularProgressIndicator(
                        value: 0.6,
                        valueColor: AlwaysStoppedAnimation<Color>(color),
                        backgroundColor: Colors.grey[400],
                        strokeWidth: 5,
                      ),
                    ),
                    Align(
                      child: SizedBox(
                        width: 100,
                        height: 100,
                        child: Align(
                          child: FittedBox(
                            child: Text(
                              noOfClients.toString(),
                              style: TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Text(
                "Total: $total\$",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: color,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
