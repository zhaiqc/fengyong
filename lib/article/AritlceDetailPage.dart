import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_shop/home/model/home_entity.dart';
import 'package:flutter_app_shop/utils/AppConfig.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class AritlceDetailPage extends StatefulWidget {
  var _article;

  AritlceDetailPage(this._article);

  @override
  _AritlceDetailPageState createState() => _AritlceDetailPageState();
}

class _AritlceDetailPageState extends State<AritlceDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: CustomScrollView(slivers: [
        SliverAppBar(
          backgroundColor: Colors.transparent,
          pinned: false,
          expandedHeight: AppConfig.logic_height(800),
          flexibleSpace: FlexibleSpaceBar(
              centerTitle: false,
              background: Container(
                height: AppConfig.logic_width(800.0),
                child: Stack(children: [
                header(),
                Container(
                  child: Row(children: [
                    Container(
                      margin: EdgeInsets.only(left: AppConfig.logic_width(30)),
                      child:new ClipOval(
                        child: new Image.network(
                          widget._article.avatar,
                          width:
                          AppConfig.logic_width(70),
                        ),
                      ),),
                    Container(child: Column(
                      mainAxisAlignment:MainAxisAlignment.center ,
                      children: [
                        Expanded(child: Container( margin: EdgeInsets.only(left: AppConfig.logic_width(5)),alignment:Alignment.center,child: Text( widget._article.nickname),),flex: 2,),
                        Expanded(child: Container(),)
                      ],),),
                    Expanded(child: Container()),
                    Container(child: Container(
                        alignment: Alignment.center,
                        child: Text("关注",style: TextStyle(color: Colors.white,height: 1),),
                        margin: EdgeInsets.only(right: AppConfig.logic_width(10)),
                        height: AppConfig.logic_height(30),width: AppConfig.logic_width(100),  decoration: new BoxDecoration(
                      color: Colors.red,
                      borderRadius:
                      BorderRadius.all( Radius.circular(15.0)),)),)
                  ],),
                  decoration: new BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                    BorderRadius.only(topLeft: Radius.circular(15.0),topRight: Radius.circular(15.0)),),
                  height: AppConfig.logic_height(100),margin: EdgeInsets.only(top: AppConfig.logic_height(700))
                  ,)
              ],),)),
        ),
        new SliverToBoxAdapter(
          child: Container(

                          decoration: new BoxDecoration(
                    color: Colors.white12,
                    borderRadius:
                    BorderRadius.only(topLeft: Radius.circular(15.0),topRight: Radius.circular(15.0)),),
//          ),
//          delegate: new SliverChildListDelegate([
//
//            new Container(
//              decoration: new BoxDecoration(
//                    color: Colors.red,
//                    borderRadius:
//                    BorderRadius.only(topLeft: Radius.circular(15.0),topRight: Radius.circular(15.0)),),
              child: Text(
                "${widget._article.content}",
                style: TextStyle(
                  height: 1,
                    fontSize: AppConfig.logic_fontSize(30),
                ),
              ),
              padding: EdgeInsets.all(AppConfig.logic_width(20)),
            ),
//          ]),
        ),


        SliverList(
          delegate: SliverChildListDelegate([
            new Container(

              height: AppConfig.logic_width(80.0),
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 5.0, bottom: 5.0),
              child: new Row(
                children: <Widget>[
                  new Container(
//                  height: AppConfig.logic_width(30.0),
//                  width: AppConfig.logic_width(6.0),
//                    color: AppConfig.widgetColor,
                  ),
                  // new Container(
                  //   padding: const EdgeInsets.only(left: 5.0),
                  //   alignment: Alignment.centerLeft,
                  //   child: new Text(
                  //     "评论",
                  //     style: TextStyle(fontSize: AppConfig.logic_fontSize(35),fontWeight: FontWeight.bold,height: 1),
                  //   ),
                  // ),
                  new Expanded(child: new Container()),
                  new Container(
                    child: new GestureDetector(
                      onTap: () {
                        ///分类点击事件

                      },
                      child: new Row(
                        children: <Widget>[
//                          new Text("更多",
//                              style: AppConfig.normalTextStyle(
//                                  AppConfig.fontDarkColor,
//                                  AppConfig.font_smallSize)),
//                          new Icon(
//                            Icons.chevron_right,
//                            size: AppConfig.font_bigSize,
////                          color: AppConfig.widgetColor,
//                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),

      ],),
    );
  }

  Widget header() {
    return Container(
      child:
      Container(
        height: AppConfig.logic_width(800.0),
        child: Swiper(
          itemBuilder: (BuildContext context, int index) {
            return  new Image.network(
              widget._article.smallimages.split(",")[index],
              fit: BoxFit.cover,
            );

//              Container(
//
//                child: Row(children: [
//                Container(
//                  margin: EdgeInsets.only(left: AppConfig.logic_width(30)),
//                  child:new ClipOval(
//                    child: new Image.network(
//                     widget._article.avatar,
//                      width:
//                      AppConfig.logic_width(70),
//                    ),
//                  ),),
//                  Container(child: Column(
//                    mainAxisAlignment:MainAxisAlignment.center ,
//                    children: [
//                    Expanded(child: Container( margin: EdgeInsets.only(left: AppConfig.logic_width(5)),alignment:Alignment.center,child: Text( widget._article.nickname),),flex: 2,),
//                    Expanded(child: Container(),)
//                  ],),),
//                    Expanded(child: Container()),
//                    Container(child: Container(
//                      alignment: Alignment.center,
//                      child: Text("关注",style: TextStyle(color: Colors.white),),
//                        margin: EdgeInsets.only(right: AppConfig.logic_width(10)),
//                        height: AppConfig.logic_height(30),width: AppConfig.logic_width(100),  decoration: new BoxDecoration(
//                      color: Colors.red,
//                      borderRadius:
//                      BorderRadius.all( Radius.circular(15.0)),)),)
//                ],),
//                decoration: new BoxDecoration(
//                    color: Colors.white,
//                    borderRadius:
//                    BorderRadius.only(topLeft: Radius.circular(15.0),topRight: Radius.circular(15.0)),),
//                height: AppConfig.logic_height(100),margin: EdgeInsets.only(top: AppConfig.logic_height(410))
//
//                ,);
            },
          itemCount: widget._article.smallimages.split(",").length,
        ),
      ),


    );
  }


}
