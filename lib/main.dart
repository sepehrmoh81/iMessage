import 'package:flutter/cupertino.dart';
import 'package:imessage/providers/chat_provider.dart';
import 'package:imessage/providers/contact_provider.dart';
import 'package:imessage/screens/home_screen.dart';
import 'package:provider/provider.dart';

import 'apple_typography.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => ChatProvider()),
    ChangeNotifierProvider(create: (_) => ContactProvider()),
  ], child: const MessageApp()));
}

class MessageApp extends StatelessWidget {
  const MessageApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppleTypography.init(context);
    return CupertinoApp(
      title: 'Flutter Demo',
      theme: CupertinoThemeData(
        primaryColor: CupertinoColors.systemBlue,
        brightness: Brightness.dark,
        textTheme: CupertinoTextThemeData(
          textStyle: AppleTypography.instance?.textStyle(),
          actionTextStyle: AppleTypography.instance?.actionTextStyle(),
          tabLabelTextStyle: AppleTypography.instance?.tabLabelTextStyle(),
          navTitleTextStyle: AppleTypography.instance?.navTitleTextStyle(),
          navLargeTitleTextStyle: AppleTypography.instance
              ?.navLargeTitleTextStyle(),
          navActionTextStyle: AppleTypography.instance?.navActionTextStyle(),
          pickerTextStyle: AppleTypography.instance?.pickerTextStyle(),
          dateTimePickerTextStyle: AppleTypography.instance
              ?.dateTimePickerTextStyle(),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
