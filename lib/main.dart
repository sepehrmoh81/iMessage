import 'package:flutter/cupertino.dart';
import 'package:imessage/screens/home_screen.dart';

void main() {
  runApp(const MessageApp());
}

class MessageApp extends StatelessWidget {
  const MessageApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Flutter Demo',
      theme: CupertinoThemeData(primaryColor: CupertinoColors.systemBlue, brightness: Brightness.dark),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}