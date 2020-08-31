import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_shop/home/HomePage.dart';
import 'package:flutter_app_shop/my/MyPage.dart';
import 'package:flutter_app_shop/utils/AppConfig.dart';
import 'package:flutter_screenutil/screenutil.dart';

class RootPage extends StatefulWidget {
  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> with TickerProviderStateMixin {
  List<Widget> _bottomNavPages = List(); // 底部导航栏各个可切换页面组
  int _selectedIndex = 0;
  double width = AppConfig.logic_width(100);
  double icon = AppConfig.logic_width(100);
  double e = AppConfig.logic_width(0);
  bool showBtn=false;
  int animatedTime =300;
  Color color = Colors.blueAccent;
  BoxShape shape = BoxShape.circle;
  double iconSize=15;

  @override
  void initState() {
    _bottomNavPages..add(HomePage())..add(MyPage(animatedCallBack));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:_bottomNavPages[_selectedIndex],
        bottomNavigationBar:BottomAppBar(),
    floatingActionButton:InkWell(child: AnimatedContainer(
      duration: Duration(milliseconds: animatedTime),	// 设置时间
      child: Row(children: [
        showBtn?  Expanded(child:    AnimatedContainer(
          duration: Duration(milliseconds: animatedTime),	// 设置时间
          width:e ,
          height:e,
          child:SizedBox(child:buildBottomItem(_selectedIndex, 0, Icons.home, "首页"),),
        ),):Container(),
        AnimatedContainer(
          duration: Duration(milliseconds: animatedTime),	// 设置时间
          width:icon ,height:icon,
          child: Icon(Icons.add,color: Colors.black,),
          decoration: new BoxDecoration(
            color: AppConfig.mainColor,
            borderRadius: new BorderRadius.circular((50.0)), // 圆角度
          ),
        ),
        showBtn?  Expanded(child:  AnimatedContainer(
          duration: Duration(milliseconds: animatedTime),	// 设置时间
          width:e ,height:e,
          child:SizedBox(child: buildBottomItem(_selectedIndex, 1, Icons.markunread, "我的"),),
        ),):Container(),
      ],),
      decoration: new BoxDecoration(
        color: Colors.white,
        borderRadius: new BorderRadius.circular((50.0)), // 圆角度
      ),
      height:AppConfig.logic_width(100),
      width: width ,
    ),onTap: (){
      if(showBtn){
        reAnimatedCallBack();
      }else{
        animatedCallBack();
      }

    },) ,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );

  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  void animatedCallBack(){
setState(() {
  width =AppConfig.logic_width(500);
  icon =AppConfig.logic_width(80);
  e=AppConfig.logic_width(100);
  showBtn=true;

});}
  void reAnimatedCallBack(){
    setState(() {
      width =AppConfig.logic_width(100);
      icon =AppConfig.logic_width(100);
      e=0;
    });
    new Timer(Duration(milliseconds: animatedTime), (){
      setState(() {
        showBtn=false;

      });
    });


  }



  buildBottomItem(int selectIndex, int index, IconData iconData, String title) {
    //未选中状态的样式
    TextStyle textStyle = TextStyle(fontSize: 12.0,color: Colors.grey);
    Color iconColor = Colors.grey;
    double iconSize=15;
    EdgeInsetsGeometry padding =  EdgeInsets.only(top: 8.0);

    if(selectIndex==index){
      //选中状态的文字样式
      textStyle = TextStyle(fontSize: 13.0,color: Colors.black);
      //选中状态的按钮样式
      iconSize=20;
      padding =  EdgeInsets.only(top: 6.0);
      iconColor=Colors.black;
    }
    Widget padItem = SizedBox();
    if (iconData != null) {
      padItem = Padding(
        padding: padding,
        child: Container(

          decoration: new BoxDecoration(
            color: Colors.white,
            borderRadius: new BorderRadius.circular((50.0)), // 圆角度
          ),
           //底部工具栏的颜色。
          child: Center(
            child: Container(
              child: Column(
                children: <Widget>[
                Icon(
                  iconData,
                  color:iconColor,
                  size: iconSize,
                ),
                Text(
                  title,
                  style: textStyle,
                )
              ],
            ),)
          ),
        ),
      );
    }
    Widget item = Container(
//      flex: 1,
      child: new GestureDetector(
        onTap: () {
          if (index != _selectedIndex) {
            setState(() {
              _selectedIndex = index;
            });
          }
        },
        child: SizedBox(
          height: 52,
          child: padItem,
        ),
      ),
    );
    return item;
  }


}
