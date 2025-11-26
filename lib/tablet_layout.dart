import 'package:flutter/material.dart';
import 'package:layouts_demo/activity_list.dart' show ActivityCard;
import 'package:layouts_demo/profile_header.dart';
import 'package:layouts_demo/quick_actions_card.dart';
import 'package:layouts_demo/skills_grid.dart' show SkillsCard;
import 'package:layouts_demo/stats_grid.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Row(
        crossAxisAlignment: .start,
        children: [
          // Left Column - Profile & Quick Actions
          Flexible(
            flex: 3,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const ProfileHeader(isCompact: false),
                  const SizedBox(height: 20),
                  const QuickActionsCard(),
                  const SizedBox(height: 20),
                  const SkillsCard(),
                ],
              ),
            ),
          ),

          const SizedBox(width: 20),

          // Right Column - Stats & Activity
          Flexible(
            flex: 5,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const StatsGrid(),
                  const SizedBox(height: 20),
                  const ActivityCard(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
