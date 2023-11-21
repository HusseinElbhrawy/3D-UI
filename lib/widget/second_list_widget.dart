import 'package:flutter/material.dart';

class SecondListWidget extends StatelessWidget {
  const SecondListWidget({
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
                'assets/image2.jpg',
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
                        '10:24',
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                      Text(
                        'Morning walk',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '2 km in 30min',
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ),
              const Icon(
                Icons.directions_walk_rounded,
                color: Colors.red,
              )
            ],
          ),
        ),
      ),
    );
  }
}
