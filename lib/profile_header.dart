import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  final bool isCompact;

  const ProfileHeader({super.key, required this.isCompact});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: .circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            // Avatar
            Container(
              width: isCompact ? 80 : 100,
              height: isCompact ? 80 : 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [Colors.blue.shade400, Colors.purple.shade400],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Icon(
                Icons.person,
                size: isCompact ? 40 : 50,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 16),

            // Profile Info
            Expanded(
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  Text(
                    'Joe Laka',
                    style: TextStyle(
                      fontSize: isCompact ? 20 : 24,
                      fontWeight: .bold,
                      color: Colors.grey.shade800,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Senior Flutter Developer',
                    style: TextStyle(
                      fontSize: isCompact ? 14 : 16,
                      color: Colors.grey.shade600,
                    ),
                  ),
                  const SizedBox(height: 8),
                  if (!isCompact)
                    Text(
                      'Building beautiful cross-platform mobile applications with Flutter and Dart.',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey.shade600,
                        height: 1.4,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Expanded(
                        child: FilledButton(
                          onPressed: () {},
                          child: const Text('Follow'),
                        ),
                      ),
                      const SizedBox(width: 8),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.chat, color: Colors.purple.shade600),
                        style: IconButton.styleFrom(
                          backgroundColor: Colors.purple.shade50,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
