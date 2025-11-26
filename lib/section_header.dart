import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  final String title;
  final String action;

  const SectionHeader({super.key, required this.title, required this.action});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .spaceBetween,
      children: [
        Text(title, style: const TextStyle(fontSize: 18, fontWeight: .bold)),
        GestureDetector(
          onTap: () {},
          child: Text(
            action,
            style: TextStyle(color: Colors.blue.shade600, fontWeight: .w500),
          ),
        ),
      ],
    );
  }
}
