import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_shop/home/model/home_entity.dart';
import 'package:flutter_app_shop/utils/AppConfig.dart';

import 'ShopListPage.dart';

class ShopList extends StatefulWidget {
  HomeEntity entity;
  String name;
  ShopList({
    Key key,
    this.entity,
    this.name,
  }) : super(key: key);
  @override
  _ShopListState createState() => _ShopListState();
}

class _ShopListState extends State<ShopList>  with TickerProviderStateMixin{
  TabController _tabController;
@override
  void initState() {
  _tabController = new TabController(length:widget.entity.data.xClass.length , vsync: this);
  widget.entity.data.xClass.forEach((element) { 
    if(element.name==widget.name){
      _tabController.animateTo( widget.entity.data.xClass.indexOf(element));
    }
  });
    
  // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:AppConfig.widgetColor,
        elevation: 0,

        leading: new GestureDetector(
          onTap: (){
          },
          child: new Container(
              alignment: Alignment.center,
//              margin: EdgeInsets.only(left: AppConfig.logic_width(15)),
//              width: AppConfig.logic_width(150),
              child:InkWell(onTap:(){
                Navigator.pop(context);

              },child:Row(children: [
//                Expanded(child:Text("淄博",style: AppConfig.normalTextStyle(Colors.grey, AppConfig.font_smallSize)),flex: 6,),
                Expanded(child: Icon(Icons.keyboard_arrow_left,color: Colors.grey,),flex: 4,)
              ],) ,)
          ),
        ),
        title:AppConfig.barSearch(context),
        actions: <Widget>[
        ],
        bottom: new TabBar(
          tabs:  widget.entity.data.xClass.map((e) =>Tab(text: e.name)).toList(),
          controller: _tabController,
          isScrollable: true,
          unselectedLabelColor: AppConfig.fontDarkColor,
          labelColor: AppConfig.mainColor,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorColor: AppConfig.mainColor,
        ),
      ),
      body: build_body(),
    );
  }
  Widget build_body(){
    return new TabBarView(
      controller: _tabController,
      dragStartBehavior: DragStartBehavior.down,
      children: widget.entity.data.xClass.map((e) {
        return build_contentView(new TablePageClass(id: e.id,lable: e.name,));
      }).toList(),

    );
  }

  Widget build_contentView(TablePageClass page) {

    return  ShopListPage(id: page.id,);
  }
}


class TablePageClass {
  final String lable;
  final int id;

  TablePageClass({this.lable,this.id});
}
