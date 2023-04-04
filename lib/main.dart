import 'package:bi_vpn/providers/onPower.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'pages/homePage.dart';

// void main() {
//   runApp(MultiProvider(
//     providers: [],
//     builder: (context, child) => MyApp(),
//   ));
// }

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => OnPower(),
      builder: (context, child) => MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
