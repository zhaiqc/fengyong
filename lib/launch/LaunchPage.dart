import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_shop/launch/view/LaunchView.dart';
import 'package:flutter_app_shop/utils/AppConfig.dart';
import 'package:flutter_screenutil/screenutil.dart';

import '../root/RootPage.dart';

class LaunchPage extends StatefulWidget {
  @override
  _LaunchPageState createState() => _LaunchPageState();
}

class _LaunchPageState extends State<LaunchPage> implements LaunchView {
  String time ="5";
  bool j=true;
@override
  void initState() {
  countDown();
  // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,width: 750, height: 1334);
    return Scaffold(body: Container(
      width: AppConfig.logic_width(750),
      height: AppConfig.logic_width(1334),
      child: Stack(
        children: [
          new Image.asset(
            "asset/launch.gif",
            fit: BoxFit.fill,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,

          ),
          new Container(
            alignment: Alignment.topRight,
            margin: new EdgeInsets.only(top:MediaQuery.of(context).padding.top,right: 15.0),
            child:new Material(
              color: AppConfig.color_null,
              borderRadius: new BorderRadius.all(
                new Radius.circular(25.0),
              ),
              child: new InkWell(
                borderRadius: new BorderRadius.all(
                  new Radius.circular(25.0),
                ),

                onTap: (){
                  j=false;
                  AppConfig.navigator(context: context,page:RootPage() );

                },
                child: new AnimatedOpacity(
                  opacity: 1.0,
                  duration: new Duration(milliseconds: 300),
                  child: new ClipRect(
                    child: new Container(
                      decoration: new BoxDecoration(
                        color: new Color.fromRGBO(41, 41, 41, 0.7),
                        borderRadius: new BorderRadius.all(
                          new Radius.circular(25.0),
                        ),
                      ),
                      child: new Container(
                        width: 100.0,
                        height: 35.0,
                        alignment: Alignment.center,
                        child: new Text("$time | 跳过",style: AppConfig.normalTextStyle(AppConfig.fontDarkColor, AppConfig.font_bigSize)),

                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
    );
  }

  void countDown() {
    new Timer(new Duration(seconds: 1),(){
      if(mounted)
        setState(() {
          time =(int.parse(time)-1).toString();
        });
      if(int.parse(time)>0){
        countDown();

      }else{
        setState(() {
          time ="0";
        });
        if(j){
          AppConfig.navigator(context: context,page:RootPage() );

        }
      }
    });
  }
}
