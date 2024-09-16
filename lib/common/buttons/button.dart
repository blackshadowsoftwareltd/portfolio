import 'package:flutter/material.dart';

class TitleBarButton extends StatelessWidget {
  const TitleBarButton({super.key, required this.child, required this.onPressed, this.width});
  final Widget child;
  final VoidCallback onPressed;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 40,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: RawMaterialButton(
          splashColor: Colors.transparent,
          padding: const EdgeInsets.all(5),
          onPressed: onPressed,
          child: child,
        ),
      ),
    );
  }
}
