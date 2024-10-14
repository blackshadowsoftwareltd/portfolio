import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../utils/enums/enum.dart';

class DesktopWindow extends StatelessWidget {
  const DesktopWindow(
      {super.key,
      required this.child,
      required this.ptype,
      required this.onClose,
      required this.onMinimize,
      required this.onMaximize});
  final Widget child;
  final WindowPositionType ptype;
  final VoidCallback onClose, onMinimize, onMaximize;
  @override
  Widget build(BuildContext context) {
    if (ptype == WindowPositionType.full) {
      return Positioned.fill(
          child: _Window(pType: ptype, onClose: onClose, onMinimize: onMinimize, onMaximize: onMaximize, child: child));
    }
    return _Window(pType: ptype, onClose: onClose, onMinimize: onMinimize, onMaximize: onMaximize, child: child);
  }
}

class _Window extends StatelessWidget {
  const _Window({
    required this.child,
    required this.pType,
    required this.onClose,
    required this.onMinimize,
    required this.onMaximize,
  });
  final VoidCallback onClose, onMinimize, onMaximize;
  final Widget child;
  final WindowPositionType pType;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blueGrey.shade900,
        borderRadius: BorderRadius.circular(15),
      ),
      width: pType.size?.width,
      height: pType.size?.height,
      // padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          GestureDetector(
            onDoubleTap: onMaximize,
            child: Padding(
              padding: const EdgeInsets.all(3),
              child: SizedBox(
                height: 25,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    AppTitleBarButton(
                      color: Colors.red,
                      icon: Icons.close,
                      onPressed: onClose,
                    ),
                    AppTitleBarButton(
                      color: Colors.green,
                      icon: Icons.fullscreen,
                      onPressed: onMaximize,
                    ),
                    AppTitleBarButton(
                      color: Colors.yellow.shade700,
                      icon: Icons.remove,
                      onPressed: onMinimize,
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Divider(color: Colors.white30, height: 0, thickness: .5),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(5, 0, 5, 5),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: child,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AppTitleBarButton extends StatelessWidget {
  const AppTitleBarButton(
      {super.key, required this.color, required this.icon, required this.onPressed, this.width, this.child});
  final Color color;
  final IconData icon;
  final VoidCallback onPressed;
  final double? width;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: child != null ? null : 25,
      child: CupertinoButton(
        onPressed: onPressed,
        padding: EdgeInsets.zero,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: ColoredBox(
            color: color,
            child: Padding(
              padding: const EdgeInsets.all(3),
              child: child ?? Icon(icon, size: 12, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
