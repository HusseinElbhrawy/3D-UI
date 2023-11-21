import 'package:flutter/material.dart';

class FirstDetailsWidget extends StatelessWidget {
  const FirstDetailsWidget({
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
            child: Text("Daily goals"),
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: Row(
            children: [
              const Expanded(
                child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text("87"),
                ),
              ),
              Transform.translate(
                  offset: const Offset(0, 20), child: const Text("%"))
            ],
          ),
        ),
        const Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child:
                  Icon(Icons.local_fire_department_outlined, color: Colors.red),
            ),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("1,840"),
                Text(
                  "calories",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ))
          ],
        ),
        const SizedBox(height: 12),
        const Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Icon(Icons.do_not_step, color: Colors.purple),
            ),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("3,480"),
                Text(
                  "steps",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ))
          ],
        ),
        const SizedBox(height: 12),
        const Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child:
                  Icon(Icons.hourglass_bottom, color: Colors.lightBlueAccent),
            ),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("6.5"),
                Text(
                  "hours",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ))
          ],
        ),
      ],
    );
  }
}
