import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class CustomPlatformButton extends StatelessWidget {
  final VoidCallback onTap;
  final double borderRadius;
  final Widget child;

  const CustomPlatformButton({
    super.key,
    required this.onTap,
    this.borderRadius = 0.0,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return PlatformWidget(
      material: (_, __) => Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(borderRadius),
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: onTap,
          child: child,
        ),
      ),
      cupertino: (_, __) => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: CupertinoButton(
          onPressed: onTap,
          padding: EdgeInsets.zero,
          borderRadius: BorderRadius.circular(borderRadius),
          child: child,
        ),
      ),
    );
  }
}
