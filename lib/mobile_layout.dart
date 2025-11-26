import 'package:flutter/material.dart';
import 'package:layouts_demo/activity_list.dart';
import 'package:layouts_demo/profile_header.dart';
import 'package:layouts_demo/quick_stats_row.dart';
import 'package:layouts_demo/section_header.dart';
import 'package:layouts_demo/skills_grid.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        // Profile Header
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: ProfileHeader(isCompact: true),
          ),
        ),

        // Quick Stats
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: QuickStatsRow(),
          ),
        ),

        // Recent Activity Section
        SliverPadding(
          padding: const EdgeInsets.all(16),
          sliver: SliverList(
            delegate: SliverChildListDelegate([
              const SectionHeader(title: 'Recent Activity', action: 'See All'),
              const SizedBox(height: 12),
              const ActivityList(),
            ]),
          ),
        ),

        // Skills Section
        SliverPadding(
          padding: const .all(16),
          sliver: SliverList(
            delegate: SliverChildListDelegate([
              const SectionHeader(title: 'Skills', action: 'Edit'),
              const SizedBox(height: 12),
              const SkillsGrid(),
            ]),
          ),
        ),
      ],
    );
  }
}
