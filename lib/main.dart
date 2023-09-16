import 'package:flutter/material.dart';
import 'package:whatsapp_app_web/src/features/helper/colors.dart';
import 'package:whatsapp_app_web/src/features/helper/responsive/responsivelayout.dart';
import 'package:whatsapp_app_web/src/features/screens/mobile_screen/view/Mobile_screen.dart';
import 'package:whatsapp_app_web/src/features/screens/web_screen/view/Web_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Whatsapp Ui',
        theme: ThemeData(
          scaffoldBackgroundColor: backgroundColor,
          colorScheme: ColorScheme.dark(
            background: backgroundColor,
          ),
        ),
        home: Responsivelayout(
            webscreenlayout: WebScreenLayout(),
            mobilescreenlayout: MobileScreenLayout()));
  }
}
