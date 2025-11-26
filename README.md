# Flutter Responsive Layout Demo

A demonstration of Flutter layout techniques focusing on responsive design for mobile and tablet devices (Android & iOS). Uses latest flutter version which supports dart shorthand

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Responsive Layout

- Mobile Layout (< 768px): Single-column design optimized for phones
- Tablet Layout (≥ 768px): 2-column layout with reorganized widget positions
- Widgets that transform based on available space

```dart
LayoutBuilder → 
  MobileLayout (CustomScrollView + Slivers)
  TabletLayout (Row + Flexible columns)
```

## Key Widgets Used

- LayoutBuilder - Responsive breakpoints
- Flexible & Expanded - Flexible layouts
- CustomScrollView & Slivers - scrolling
- ConstrainedBox - Size constraints
- MediaQuery - Screen information
- SafeArea - Notch safety
