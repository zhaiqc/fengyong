import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_shop/login/model/User.dart';
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
              backgroundColor:Colors.white,
              pinned: false,
              expandedHeight: AppConfig.logic_height(500),
                  flexibleSpace:Container(
                    child: Stack(
                      children: [
                      Image.asset( "asset/header.gif", fit: BoxFit.cover),
                        Container(
                         decoration:BoxDecoration(borderRadius:BorderRadius.only(topLeft: Radius.circular(15.0),topRight: Radius.circular(15.0)),color: Colors.white),
                       margin: EdgeInsets.only(top: AppConfig.logic_height(300),),
                       child: Column(
                         children: [
                       Container(height:AppConfig.logic_height(70),),
                         Expanded(child:  Container(child: Column(children: [
                           Expanded(child: Container(
                             margin:EdgeInsets.only(left: AppConfig.logic_width(30)) , child: Text("${new User().entity.data.userinfo.nickname}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: AppConfig.logic_fontSize(30)),),width: double.infinity,)),
                           Expanded(child: Container(child: Row(children: [
                             Expanded(child: Container(
                               margin: EdgeInsets.only(left: AppConfig.logic_width(20)),

                               child: Row(
                               children: [
                               Expanded(child: Container(child: Text.rich(TextSpan(text: "7",
                                   style: TextStyle(fontSize: AppConfig.logic_fontSize(25), color: Colors.black,fontWeight: FontWeight.bold,height: 1),
                                   children:[       TextSpan(
                                   text: '关注',

                                     style: TextStyle(fontSize: AppConfig.logic_fontSize(15), color: Colors.black,fontWeight: FontWeight.normal,height: 1),

                                   )


                               ] )),)),
                                 Expanded(child: Container(child: Text.rich(TextSpan(text: "7",
                                     style: TextStyle(fontSize: AppConfig.logic_fontSize(25), color: Colors.black,fontWeight: FontWeight.bold,height: 1),
                                     children:[       TextSpan(
                                       text: '粉丝',

                                       style: TextStyle(fontSize: AppConfig.logic_fontSize(15), color: Colors.black,fontWeight: FontWeight.normal,height: 1),

                                     )


                                     ] )),)),//                               Expanded(child: Container(child: Text("7关注"),)),
                             ],),)),
                             Expanded(child: Container(),flex: 2,)
                           ],),),)
                         ],),),flex: 2,),
                         Expanded(child:  Container(

                           alignment:Alignment.centerLeft ,
                           margin: EdgeInsets.only(left: AppConfig.logic_width(20)),
                           child: Text("介绍自己更容易获得关注哦",style: TextStyle(color: Colors.grey,fontSize: AppConfig.font_smallSize,height: 1),),)),

                       ],),
                       height: AppConfig.logic_height(300),),


                        Container(
                          margin: EdgeInsets.only(top: AppConfig.logic_height(260),left: AppConfig.logic_width(20)),
                          child:   new ClipOval(
                            child: new Image.network(
                              new User().entity.data.userinfo.avatar,
                              width:
                              AppConfig.logic_width(120),
                            ),
                          ),),

                    ],)

//                    Column(children: [
//                    Container(
//                        margin: EdgeInsets.only(top: 16.0),
//                        padding: EdgeInsets.only(left: 32.0, right: 32.0),
//                        child: Text(
//                          'Some text',
//                          textAlign: TextAlign.center,
//                          style: TextStyle(
//                              color: Colors.white,
//                              fontFamily: 'PlayfairDisplay',
//                              fontStyle: FontStyle.italic,
//                              fontSize: 16.0),
//                        )),
//                      Container(
//                          margin: EdgeInsets.only(top: 16.0),
//                          padding: EdgeInsets.only(left: 32.0, right: 32.0),
//                          child: Text(
//                            'some text',
//                            textAlign: TextAlign.center,
//                            style: TextStyle(
//                                color: Colors.white,
//                                fontFamily: 'PlayfairDisplay',
//                                fontSize: 16.0),
//                          )),
//                  ],),

                  ) ,
//              flexibleSpace: FlexibleSpaceBar(
//
//                  centerTitle: false,
//                  background: new Image.asset(
//                    "asset/header.gif",
//                    fit: BoxFit.fill,
//                  ),),
            ),


            new SliverList(
              delegate: new SliverChildListDelegate([
                new Container(
                  child: dingdan(),
                ),
              ]),
            ),
          ],
    );
  }

  Widget dingdan(){
    return Container(
      alignment: Alignment.center,
      height: AppConfig.logic_height(260),child:Card(child: Column(
      mainAxisAlignment:MainAxisAlignment.center ,
      children: [
        new Row(
          children: <Widget>[

            new Container(
              padding: const EdgeInsets.only(left: 10.0,top: 10.0),
              alignment: Alignment.centerLeft,
              child: new Text(
                "我的订单",
                style: AppConfig.normalTextStyle(
                    AppConfig.fontDarkColor, AppConfig.font_midSize),
              ),
            ),
            new Expanded(child: new Container()),
            new Container(
              padding: const EdgeInsets.only(top: 10.0,right: 10.0),

              child: new GestureDetector(
                onTap: () {
                  ///分类点击事件
                },
                child: new Row(
                  children: <Widget>[
                    new Icon(
                      Icons.chevron_right,
                      size: AppConfig.font_bigSize,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Padding(padding: EdgeInsets.only(top: AppConfig.logic_height(10)),child: Divider(
          height: 0.2,
          color: Colors.black12,

        ),),
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.only( top: 15),
          height: AppConfig.logic_height(150),
          child: Row(children: [
            Expanded(child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Icon(Icons.assignment,color: Colors.black54),
                  Text("我的订单",style: TextStyle(fontSize: AppConfig.logic_fontSize(25),color: Colors.black54),),
                ],),)),
            Expanded(child: Container(child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Icon(Icons.query_builder,color: Colors.black54),
                Container(
                  alignment: Alignment.center,
                  child: Text("待使用",style: TextStyle(fontSize: AppConfig.logic_fontSize(25),color: Colors.black54,),textAlign: TextAlign.center,),),

              ],),)),
            Expanded(child: Container(child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Icon(Icons.question_answer ,color: Colors.black54),
                Text("待评价",style: TextStyle(fontSize: AppConfig.logic_fontSize(25),color: Colors.black54),),

              ],),)),
            Expanded(child: Container(

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.account_balance_wallet,color: Colors.black54),
                  Text("退款/售后",style: TextStyle(color: Colors.black54,fontSize: AppConfig.logic_fontSize(25)),),

                ],),)),

          ],),)
      ],) ,),);
  }

}
