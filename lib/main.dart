import 'package:flutter/material.dart';
import 'package:layouts_demo/mobile_layout.dart';
import 'package:layouts_demo/tablet_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mobile Layout Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        useMaterial3: true,
        platform: .iOS, // iOS-style for both platforms
      ),
      home: const ResponsiveMobileDashboard(),
    );
  }
}

class ResponsiveMobileDashboard extends StatelessWidget {
  const ResponsiveMobileDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        title: const Text('Profile Dashboard'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(icon: const Icon(Icons.notifications), onPressed: () {}),
          IconButton(icon: const Icon(Icons.settings), onPressed: () {}),
        ],
      ),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            // Mobile vs Tablet breakpoints
            if (constraints.maxWidth < 768) {
              return const MobileLayout();
            } else {
              return const TabletLayout();
            }
          },
        ),
      ),
    );
  }
}
