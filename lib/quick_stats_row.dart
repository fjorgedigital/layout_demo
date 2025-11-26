import 'package:flutter/material.dart';

class QuickStatsRow extends StatelessWidget {
  const QuickStatsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: StatItem(
            value: '24',
            label: 'Projects',
            icon: Icons.work_outline,
          ),
        ),
        SizedBox(width: 12),
        Expanded(
          child: StatItem(
            value: '1.2K',
            label: 'Followers',
            icon: Icons.people_outline,
          ),
        ),
        SizedBox(width: 12),
        Expanded(
          child: StatItem(
            value: '356',
            label: 'Following',
            icon: Icons.group_outlined,
          ),
        ),
      ],
    );
  }
}

class StatItem extends StatelessWidget {
  final String value;
  final String label;
  final IconData icon;

  const StatItem({
    super.key,
    required this.value,
    required this.label,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: .circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Icon(icon, size: 24),
            const SizedBox(height: 8),
            Text(
              value,
              style: const TextStyle(fontSize: 18, fontWeight: .bold),
            ),
            const SizedBox(height: 4),
            Text(
              label,
              style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
            ),
          ],
        ),
      ),
    );
  }
}
