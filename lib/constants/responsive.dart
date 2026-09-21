import 'dart:math' as math;
import 'package:flutter/material.dart';

class Responsive {
  static const double designWidth = 390;

  static double scale(
      BuildContext context,
      double value, {
        double minScale = 0.85,
        double maxScale = 1.15,
      }) {
    final screenWidth = MediaQuery.sizeOf(context).width;

    final scaleFactor = screenWidth / designWidth;

    final limitedScale = math.min(
      math.max(scaleFactor, minScale),
      maxScale,
    );

    return value * limitedScale;
  }
}

extension ResponsiveExtension on num {
  double r(BuildContext context) {
    return Responsive.scale(
      context,
      toDouble(),
    );
  }
}