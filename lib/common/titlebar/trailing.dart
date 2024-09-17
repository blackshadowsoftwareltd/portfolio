import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../utils/themes/light.dart';
import '../buttons/button.dart';

class TitleBarTrailings extends StatelessWidget {
  const TitleBarTrailings({super.key});

  @override
  Widget build(BuildContext context) {
    Stream<String> timeStream() {
      return Stream.periodic(const Duration(seconds: 1), (_) {
        DateTime now = DateTime.now();
        return DateFormat('EEE d MMM h:mm:ss a').format(now);
      });
    }

    return Expanded(
        child: Padding(
      padding: const EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TitleBarButton(
            onPressed: () {},
            child: const RotationTransition(
              turns: AlwaysStoppedAnimation(90 / 360),
              child: Icon(
                Icons.attachment,
                size: 20,
                color: Colors.white,
              ),
            ),
          ),
          TitleBarButton(
            onPressed: () {},
            child: const Icon(
              Icons.wifi,
              size: 20,
              color: Colors.white,
            ),
          ),
          TitleBarButton(
            onPressed: () {},
            width: 50,
            child: const Icon(
              Icons.search,
              size: 20,
              color: Colors.white,
            ),
          ),
          TitleBarButton(
            onPressed: () {},
            child: const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.toggle_off,
                  size: 10,
                  color: Colors.white,
                ),
                Icon(
                  Icons.toggle_on,
                  size: 10,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          TitleBarButton(
            onPressed: () {},
            width: 180,
            child: StreamBuilder<Object>(
                stream: timeStream(),
                builder: (context, snapshot) {
                  return Text(snapshot.data.toString(), style: titleMedium);
                }),
          ),
        ],
      ),
    ));
  }
}
