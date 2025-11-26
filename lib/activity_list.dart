import 'package:flutter/material.dart';
import 'package:layouts_demo/section_header.dart';

class ActivityList extends StatelessWidget {
  const ActivityList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ActivityListItem(
          icon: Icons.work,
          title: 'Completed Flutter UI Project',
          subtitle: 'Mobile Banking App',
          time: '2 hours ago',
          color: Colors.green,
        ),
        ActivityListItem(
          icon: Icons.article,
          title: 'Published New Article',
          subtitle: 'State Management in Flutter',
          time: '1 day ago',
          color: Colors.blue,
        ),
        ActivityListItem(
          icon: Icons.update,
          title: 'Updated Portfolio',
          subtitle: 'Added new projects',
          time: '2 days ago',
          color: Colors.orange,
        ),
        ActivityListItem(
          icon: Icons.celebration,
          title: 'Attended Flutter Conference',
          subtitle: 'Flutter Forward 2024',
          time: '1 week ago',
          color: Colors.purple,
        ),
      ],
    );
  }
}

class ActivityListItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final String time;
  final Color color;

  const ActivityListItem({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.time,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: .circular(12)),
      child: ListTile(
        leading: Container(
          width: 44,
          height: 44,
          decoration: BoxDecoration(
            color: color.withAlpha(25),
            shape: BoxShape.circle,
          ),
          child: Icon(icon, color: color),
        ),
        title: Text(
          title,
          style: const TextStyle(fontSize: 14, fontWeight: .w600),
        ),
        subtitle: Column(
          crossAxisAlignment: .start,
          children: [
            Text(
              subtitle,
              style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
            ),
            const SizedBox(height: 2),
            Text(
              time,
              style: TextStyle(fontSize: 11, color: Colors.grey.shade500),
            ),
          ],
        ),
        trailing: Icon(Icons.chevron_right, color: Colors.grey.shade400),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      ),
    );
  }
}

class ActivityCard extends StatelessWidget {
  const ActivityCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: .circular(16)),
      child: const Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            SectionHeader(title: 'Recent Activity', action: 'See All'),
            SizedBox(height: 16),
            ActivityList(),
          ],
        ),
      ),
    );
  }
}
