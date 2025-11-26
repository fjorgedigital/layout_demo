import 'package:flutter/material.dart';
import 'package:layouts_demo/quick_stats_row.dart' show StatItem;

class StatsGrid extends StatelessWidget {
  const StatsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
      childAspectRatio: 1.5,
      children: const [
        StatItem(value: '24', label: 'Projects', icon: Icons.work_outline),
        StatItem(value: '1.2K', label: 'Followers', icon: Icons.people_outline),
        StatItem(value: '356', label: 'Following', icon: Icons.group_outlined),
        StatItem(value: '4.8', label: 'Rating', icon: Icons.star_outline),
        StatItem(value: '12', label: 'Articles', icon: Icons.article_outlined),
        StatItem(
          value: '5y',
          label: 'Experience',
          icon: Icons.timeline_outlined,
        ),
      ],
    );
  }
}
