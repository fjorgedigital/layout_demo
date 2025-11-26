import 'package:flutter/material.dart';
import 'package:layouts_demo/section_header.dart';

class SkillsGrid extends StatelessWidget {
  const SkillsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final skills = [
      'Flutter',
      'Dart',
      'Firebase',
      'REST API',
      'UI/UX Design',
      'State Management',
      'Testing',
      'CI/CD',
    ];

    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: skills
          .map(
            (skill) => Chip(
              label: Text(skill),
              backgroundColor: Colors.blue.shade50,
              labelStyle: TextStyle(
                color: Colors.blue.shade800,
                fontWeight: .w500,
              ),
              side: BorderSide(color: Colors.blue.shade100),
              shape: RoundedRectangleBorder(borderRadius: .circular(16)),
            ),
          )
          .toList(),
    );
  }
}

class SkillsCard extends StatelessWidget {
  const SkillsCard({super.key});

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
            SectionHeader(title: 'Skills', action: 'Edit'),
            SizedBox(height: 16),
            SkillsGrid(),
          ],
        ),
      ),
    );
  }
}
