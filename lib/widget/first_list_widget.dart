import 'package:flutter/material.dart';

class FirstListWidget extends StatelessWidget {
  const FirstListWidget({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.fromLTRB(12, height * 0.8, 12, 100),
      itemCount: 100,
      itemBuilder: (context, index) => Card(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/image1.jpg',
                fit: BoxFit.cover,
                width: 70,
                height: 70,
              ),
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'A simple way to stay healthy',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Dr Babak',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Icon(
                Icons.location_on,
                color: Colors.red,
              )
            ],
          ),
        ),
      ),
    );
  }
}
