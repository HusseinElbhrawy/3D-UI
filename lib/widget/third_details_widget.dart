import 'package:flutter/material.dart';

class ThirdDetailsWidget extends StatelessWidget {
  const ThirdDetailsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: FittedBox(
            fit: BoxFit.fitWidth,
            child: Text("Profile"),
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: FittedBox(
            fit: BoxFit.fitWidth,
            child: Text("Dis"),
          ),
        ),
        Text(
          "23 years old",
          style: TextStyle(fontSize: 12, color: Colors.grey),
        ),
      ],
    );
  }
}
