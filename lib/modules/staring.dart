import 'package:flutter/cupertino.dart';
import '../routes/routers.dart';

class StartApp extends StatelessWidget {
  const StartApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // theme: themeData,
      routerConfig: router,
    );
  }
}
