import 'package:flutter/material.dart';
import 'package:flutter_app_shop/root/RootPage.dart';
import 'package:flutter_app_shop/utils/AppConfig.dart';
import 'package:flutter_screenutil/screenutil.dart';

import 'launch/LaunchPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: AppConfig.AppTitle,
      theme: AppConfig.defaultTheme,
      home: LaunchPage(),
    );
  }
}


