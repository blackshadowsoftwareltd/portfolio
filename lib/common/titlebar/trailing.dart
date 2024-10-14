import 'package:flutter/cupertino.dart';
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
            child: const Icon(
              Icons.attach_file_outlined,
              size: 20,
              color: Colors.white,
            ),
          ),
          TitleBarButton(
            onPressed: () {},
            child: const Icon(
              // Icons.volume_up_rounded,
              CupertinoIcons.volume_up,
              size: 20,
              color: Colors.white,
            ),
          ),
          TitleBarButton(
            onPressed: () {},
            child: const Icon(
              CupertinoIcons.bluetooth,
              size: 20,
              color: Colors.white,
            ),
          ),
          TitleBarButton(
            onPressed: () {},
            child: const Icon(
              CupertinoIcons.wifi,
              size: 20,
              color: Colors.white,
            ),
          ),
          TitleBarButton(
            onPressed: () {},
            width: 50,
            child: const Icon(
              CupertinoIcons.search,
              size: 20,
              color: Colors.white,
            ),
          ),
          TitleBarButton(
            onPressed: () {},
            child: const SizedBox(
              width: 30,
              height: 55,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Icon(
                      Icons.toggle_off_outlined,
                      size: 12,
                      color: Colors.white,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Icon(
                      Icons.toggle_on_outlined,
                      size: 12,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
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
