import 'package:cv/constants/color_constants.dart';
import 'package:flutter/material.dart';

class GlassContainer extends StatelessWidget {
  const GlassContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [ColorConstants.chineseBlack, ColorConstants.jetBlack, ColorConstants.charcoal],
          stops: [0.0, 0.5, 1.0],
        ),
      ),
      child: ClipRRect(
        child: Stack(
          children: [
            Positioned(
              top: -80,
              left: -40,
              child: Container(
                width: 220,
                height: 140,
                decoration: BoxDecoration(
                  gradient: RadialGradient(colors: [Colors.white.withValues(alpha: 0.09), Colors.transparent]),
                ),
              ),
            ),
            child,
          ],
        ),
      ),
    );
  }
}
