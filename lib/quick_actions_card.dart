import 'package:flutter/material.dart';

class QuickActionsCard extends StatelessWidget {
  const QuickActionsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: .circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            Text(
              'Quick Actions',
              style: TextStyle(
                fontSize: 16,
                fontWeight: .bold,
                color: Colors.grey.shade800,
              ),
            ),
            const SizedBox(height: 16),
            const ActionButton(
              icon: Icons.edit,
              label: 'Edit Profile',
              color: Colors.blue,
            ),
            const ActionButton(
              icon: Icons.share,
              label: 'Share Profile',
              color: Colors.green,
            ),
            const ActionButton(
              icon: Icons.download,
              label: 'Export CV',
              color: Colors.orange,
            ),
            const ActionButton(
              icon: Icons.contact_page,
              label: 'Contact Info',
              color: Colors.purple,
            ),
          ],
        ),
      ),
    );
  }
}

class ActionButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;

  const ActionButton({
    super.key,
    required this.icon,
    required this.label,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 12),
      child: FilledButton.icon(
        onPressed: () {},
        icon: Icon(icon, size: 20),
        label: Text(label),
        style: FilledButton.styleFrom(
          backgroundColor: color.withAlpha(25),
          foregroundColor: color,
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.all(16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
