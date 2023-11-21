import 'package:flutter/material.dart';

class SecondDetailsWidget extends StatelessWidget {
  const SecondDetailsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          width: double.infinity,
          child: FittedBox(
            fit: BoxFit.fitWidth,
            child: Text("Journal"),
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: Row(
            children: [
              Transform.translate(
                  offset: const Offset(0, 20), child: const Text("<")),
              const Expanded(
                child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text("12"),
                ),
              ),
            ],
          ),
        ),
        const Text(
          "July 2020",
          style: TextStyle(fontSize: 12, color: Colors.grey),
        ),
      ],
    );
  }
}
