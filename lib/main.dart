import 'package:flutter/material.dart';
import 'package:friendly_chat/ChatScreen.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/foundation.dart';

void main() {
//  debugPaintSizeEnabled = true;
  runApp(FriendlyChatApp());
}

class FriendlyChatApp extends StatelessWidget {
  final ThemeData KIOSTheme = ThemeData(
    primarySwatch: Colors.orange,
    primaryColor: Colors.grey[100],
    primaryColorBrightness: Brightness.light,
  );

  final ThemeData KDefaultTheme = ThemeData(
    primarySwatch: Colors.purple,
//    primaryColor: Colors.blue,
    accentColor: Colors.orangeAccent[400],
  );
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Friendly Chat',
      theme: defaultTargetPlatform == TargetPlatform.iOS
        ? KIOSTheme : KDefaultTheme,
      home: ChatScreen(),
    );
  }
}

