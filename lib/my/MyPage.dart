import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_shop/utils/AppConfig.dart';

class MyPage extends StatefulWidget {
  var animatedCallBack;

  MyPage(this.animatedCallBack);

  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: build_body(),
    );
  }

  Widget build_body(){
    return CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: false,
              expandedHeight: AppConfig.logic_height(400),
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: false,
                  background: new Image.asset(
                    "asset/header.gif",
                    fit: BoxFit.fill,
                  ),),
            ),

          ],
    );
  }
}
