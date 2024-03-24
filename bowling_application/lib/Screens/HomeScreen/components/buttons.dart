import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: 170,
          child: OutlinedButton.icon(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
                backgroundColor: Colors.green, foregroundColor: Colors.white),
            icon: Icon(Icons.add),
            label: const Text('New game'),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        SizedBox(
          width: 170,
          child: OutlinedButton.icon(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
            ),
            icon: Icon(Icons.qr_code),
            label: const Text('Join game'),
          ),
        ),
      ],
    );
  }
}
