import 'package:flutter/material.dart';
import 'package:test_sl/screens/main-screen-wrapper.dart';
import 'package:test_sl/screens/personal-information-37.dart';
import 'package:test_sl/screens/post-new-room-88.dart';
import 'package:test_sl/screens/rating-73.dart';
import 'package:test_sl/screens/request-reservation-dialog-52.dart';
import 'package:test_sl/screens/setting-page.dart';
import 'package:test_sl/screens/social-media-link-39.dart';
import 'package:test_sl/screens/social-post-tus.dart';
import 'package:test_sl/screens/user-support-81.dart';
import 'package:test_sl/screens/welcome-app.dart';
import 'package:test_sl/screens/63-64.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // Sử dụng MainScreenWrapper để bao bọc tất cả các màn hình
      home: MainScreenWrapper(child: RoomForm()),
    );
  }
}
