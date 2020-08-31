import 'package:flutter/material.dart';
import 'package:flutter_app_shop/utils/widgets/shimmer.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class AppConfig{
  static final AppConfig _instance = new AppConfig._internal();

  factory AppConfig() {
    return _instance;
  }

  AppConfig._internal();

  static String host ="http://34.84.197.89/api/";
  static ThemeData defaultTheme = new ThemeData(
      brightness: Brightness.light,

  );
  static String AppTitle ="蜂蛹";

  static double font_smallSize = logic_fontSize(26.0);
  static double font_midSize = logic_fontSize(30.0);
  static double font_bigSize = logic_fontSize(36.0);

  static Color searchBackgroundColor = Colors.white10;
  static Color maskBackgroundColor = Colors.black.withOpacity(0.5);
  static Color fontColor = Colors.white; //字体颜色
  static Color fontDarkColor = Colors.black; //字体暗色
  static Color otherColor = Colors.orangeAccent;
  static Color mainColor = Colors.yellow;
  static Color widgetColor = Colors.white70; //控件颜色
  static Color color_null = Colors.white.withOpacity(0.0);
  static Color cardBackgroundColor = new Color(0xFF222222);
  static TextStyle defaultTextStyle(Color color, double size, TextDecoration) {
    return new TextStyle(
      inherit: false,
      color: color,
      fontSize: size,
      decoration: TextDecoration,
    );
  }

  static TextStyle normalTextStyle(Color color, double size) {
    return new TextStyle(
      color: color,
      fontSize: size,
    );
  }
  static double logic_fontSize(double size) {
    return ScreenUtil().setSp(size);
  }

  static double logic_height(double height) {
    return ScreenUtil().setHeight(height);
  }

  static double logic_width(double width) {
    return ScreenUtil().setWidth(width);
  }

  ///
  static navigator({context,page}){
    Navigator.push(
      context,
      new MaterialPageRoute(builder: (context)=> page),
    );
  }

  static Widget build_appBar(context,voidcallback) {
    return new AppBar(
      backgroundColor:widgetColor,
      elevation: 0,
      leading: new GestureDetector(
        onTap: (){
        },
        child: new Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(left: AppConfig.logic_width(20)),
            width: AppConfig.logic_width(150),
            child:InkWell(onTap:(){
              },child:Row(children: [
              Expanded(child:Text("淄博",style: AppConfig.normalTextStyle(Colors.grey, AppConfig.font_midSize)),flex: 6,),
              Expanded(child: Icon(Icons.arrow_drop_down,color: Colors.grey,),flex: 4,)
            ],) ,)
        ),
      ),
      title: barSearch(context),
      actions: <Widget>[
        ],
    );
  }
  static Widget barSearch(context){
    return new Container(
      height: AppConfig.logic_width(50),
      alignment: Alignment.center,
      child: new Stack(
        children: <Widget>[
          new Row(
            children: <Widget>[
              new Expanded(child: new Container()),
              new Container(
                padding:  EdgeInsets.only(right: 5.0),
                child: new Icon(Icons.search,size: AppConfig.font_bigSize,color:Colors.grey,),
              ),
              new Container(
                //
                child: new Text("输入搜索关键词",style: AppConfig.normalTextStyle(Colors.grey, AppConfig.font_smallSize),),
              ),
              new Expanded(child: new Container()),
            ],
          ),
          new Material(color: color_null,child: new InkWell( onTap: (){
//            Navigator.push(context, new MaterialPageRoute(builder: (_) => new searchView()));

          },),)
        ],
      ),
      decoration: new BoxDecoration(
        borderRadius:  BorderRadius.all( Radius.circular(50.0)),
       
        border: Border.all(
            color: Colors.grey,
            width: AppConfig.logic_width(1),
            style: BorderStyle.solid
        ),
      ),


    );
  }
  static Widget loadingView(){
    return new Container(
      child: new Column(
        children: <Widget>[
          new Expanded(child: new Container()),
          new Container(
            alignment: Alignment.center,
            child: new SpinKitWave(color:Colors.yellow,size: 50.0,),
          ),
          new Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(top: 5.0),
            child: Shimmer.fromColors(
                child: new Text("正在加载中~",style: TextStyle(color: Colors.yellow,),),
                baseColor: Colors.white30,
                highlightColor: Colors.white
            ),
          ),
          new Expanded(child: new Container()),
        ],
      ),
    );

  }

}