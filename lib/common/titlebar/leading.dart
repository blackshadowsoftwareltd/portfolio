import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/modules/home/provider/window.dart';
import '../../utils/constants/path.dart';
import '../../utils/themes/light.dart';
import '../buttons/button.dart';

class TitleBarLeadings extends StatelessWidget {
  const TitleBarLeadings({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.all(5),
      child: Row(
        children: [
          TitleBarButton(
            onPressed: () {},
            width: 35,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(AssetsImagesPath.blackshadow),
            ),
          ),
          Consumer(builder: (context, state, __) {
            final first = state.watch(windowListProvider.select((v) => v.lastOrNull));
            if (first == null) {
              return TitleBarButton(
                onPressed: () {},
                width: 95,
                child: Text('Black Shadow', style: titleMedium),
              );
            }

            return TitleBarButton(
              onPressed: () {},
              width: 10 + first.app.name.length * 8,
              child: Text(first.app.name, style: titleMedium),
            );
          }),
          TitleBarButton(
            onPressed: () {},
            width: 50,
            child: Text('File', style: titleMedium),
          ),
          TitleBarButton(
            onPressed: () {},
            width: 50,
            child: Text('Edit', style: titleMedium),
          ),
          TitleBarButton(
            onPressed: () {},
            width: 50,
            child: Text('View', style: titleMedium),
          ),
          TitleBarButton(
            onPressed: () {},
            width: 50,
            child: Text('Window', style: titleMedium),
          ),
          TitleBarButton(
            onPressed: () {},
            width: 50,
            child: Text('Help', style: titleMedium),
          ),
        ],
      ),
    ));
  }
}
