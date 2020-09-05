
import 'package:chewie/chewie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_shop/home/model/shop_entity.dart';
import 'package:flutter_app_shop/utils/AppConfig.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:video_player/video_player.dart';

class DetailPage extends StatefulWidget {
  ShopEntity  entity;

  DetailPage(this.entity);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  List<Widget> tags =new List();
  int height=0;
  ChewieController controller;
bool showVideo=false;
  @override
  void initState() {
     controller = ChewieController(
      videoPlayerController: VideoPlayerController.network(widget.entity.data.attachfile),
      autoPlay: false,
      autoInitialize: true,
      aspectRatio: 16 / 9,
      looping: false,
       allowFullScreen: false,
       placeholder: new Container(
        color: Colors.black,
      ),
    )..addListener(() {
     });

    height=widget.entity.data.setmeal.length;
    for(int i =0;i<widget.entity.data.setmeal.length;i++){
      height=height+ widget.entity.data.setmeal[i].configjson.length;
    }

    widget.entity.data.manystoretaps.forEach((element) {
      tags.add( Container(
        alignment: Alignment.center,
        child: Text("${element.name}",
          textAlign: TextAlign.right,
          style: TextStyle(
              color: Colors.red,
              fontSize:
              AppConfig.logic_fontSize(
                  18)),
        ),
        decoration: new BoxDecoration(
          borderRadius: BorderRadius.all(
              Radius.circular(5.0)),
          border: new Border.all(
              width: AppConfig.logic_width(2),
              color: Colors.red),
        ),
        margin: EdgeInsets.all(
            AppConfig.logic_width(20)),
        height: AppConfig.logic_width(40),
        width: AppConfig.logic_width(100),
      ),);
    });
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.transparent,
//          leading:  Text('大玩家【227店通用】',style: TextStyle(fontSize:AppConfig.logic_fontSize(15)),),
            pinned: false,
            expandedHeight: AppConfig.logic_height(500),
            flexibleSpace: FlexibleSpaceBar(
                centerTitle: false,
                background:header()),
          ),

          ///标题
          new SliverList(
            delegate: new SliverChildListDelegate([
              new Container(
                child: Text(
                  "${widget.entity.data.title}",
                  style: TextStyle(

                    fontSize: AppConfig.logic_fontSize(25),
                    color: Colors.orange

                  ),
                ),
                margin: EdgeInsets.all(AppConfig.logic_width(20)),
              ),
            ]),
          ),
          new SliverList(
            delegate: new SliverChildListDelegate([
              new Container(
                child: Text(
                  "${widget.entity.data.subtitle}",
                  style: TextStyle(
                      fontSize: AppConfig.logic_fontSize(30),
                      fontWeight: FontWeight.bold
                  ),
                ),
                margin: EdgeInsets.only(left: AppConfig.logic_width(20),right: AppConfig.logic_width(20)),
              ),
            ]),
          ),
          ///信息
          new SliverList(
            delegate: new SliverChildListDelegate([
              new Container(
                child: Container(

                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                              margin: EdgeInsets.only(
                                  left: AppConfig.logic_width(20)),
                              child: Column(
                                children: [
                                  Row(children: tags,
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(AppConfig.logic_width(10)),

                                    alignment: Alignment.centerLeft,
                                    child: HtmlWidget( widget.entity.data.introduction,),
                                  ),
                                  Container(
//                        margin: EdgeInsets.only(left: AppConfig.logic_width(20)),
                                    height: AppConfig.logic_height(100),
                                    child: Row(
                                      children: [
                                        Text(
                                          "￥",
                                          style: TextStyle(
                                              fontSize:
                                              AppConfig.logic_fontSize(
                                                  15),
                                              color: Colors.red),
                                        ),
                                        Text(
                                          "${widget.entity.data.price}",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize:
                                              AppConfig.logic_fontSize(
                                                  45),
                                              color: Colors.red),
                                        ),
                                        Text(
                                          "￥${widget.entity.data.originalPrice}",
                                          style: TextStyle(
                                              fontSize:
                                              AppConfig.logic_width(25),
                                              color: Colors.grey,
                                              decoration:
                                              TextDecoration.lineThrough),
                                        ),
                                        widget.entity.data.spellStatus=="1"?  Container(
                                          margin: EdgeInsets.only(left: AppConfig.logic_width(10)),
                                          height: AppConfig.logic_height(30),
                                          width: AppConfig.logic_width(100),
                                          padding: EdgeInsets.all(AppConfig.logic_width(10)),
                                          decoration: new BoxDecoration(
                                            color: Colors.white10,
                                            borderRadius: BorderRadius.only(
                                                topLeft:  Radius.circular(8.0),
                                                topRight:  Radius.circular(8.0),
                                                bottomRight:  Radius.circular(8.0)
                                            ),
                                            border: new Border.all(
                                                width: AppConfig.logic_width(0),
                                                color: Colors.red
                                            ),
                                          ),
                                          child:Text("${widget.entity.data.spellNum}人团",style: TextStyle(color: Colors.red,fontSize: AppConfig.logic_fontSize(16),height: 1,fontWeight: FontWeight.bold),textAlign: TextAlign.center,) ,
//                      "￥${widget.entity.data.originalPrice}",
//                      style: TextStyle(
//                          fontSize: AppConfig.logic_width(25),
//                          color: Colors.grey,
//                          decoration: TextDecoration.lineThrough),
                                        ):Container(),
                                      ],
                                    ),
                                  )
                                ],
                              ))),
                    ],
                  ),
                  decoration: new BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.all(
                        Radius.circular(25.0)),
                    border: new Border.all(
                        width: AppConfig.logic_width(0),
                        color: Colors.transparent),
                  ),
                ),

//              height: AppConfig.logic_height(220),
                margin: EdgeInsets.all(AppConfig.logic_width(20)),
              ),
            ]),
          ),

          ///套餐
          new SliverList(
            delegate: new SliverChildListDelegate([
              new Container(
                margin: EdgeInsets.only(
                    left: AppConfig.logic_width(20),
                    right: AppConfig.logic_width(20)),
                child: new Row(
                  children: <Widget>[
                    new Container(
                      padding: const EdgeInsets.only(left: 5.0),
                      alignment: Alignment.centerLeft,
                      child: new Text(
                        "到店套餐",
                        style: TextStyle(
                          fontSize: AppConfig.logic_fontSize(35),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    new Expanded(child: new Container()),
//                      new Container(
//                        child: new GestureDetector(
//                          onTap: () {
//                            ///分类点击事件
//                          },
//                          child: new Row(
//                            children: <Widget>[
//                              new Text("查看全部",
//                                  style: TextStyle(
//                                      fontSize: AppConfig.logic_fontSize(20))),
//                              new Icon(
//                                Icons.chevron_right,
//                                size: AppConfig.font_bigSize,
////                          color: AppConfig.widgetColor,
//                              ),
//                            ],
//                          ),
//                        ),
//                      ),
                  ],
                ),

//              height: AppConfig.logic_height(90),
              ),
            ]),
          ),
          new SliverList(
            delegate: new SliverChildListDelegate([
              new Container(
                child: Card(
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                              margin: EdgeInsets.only(top: AppConfig.logic_width(20)),
                              child: Column(
                                children: [
                                  Container(
                                      height: AppConfig.logic_height(50) *height,
                                      alignment: Alignment.centerLeft,
                                      child: ListView.builder(
                                          physics:
                                          NeverScrollableScrollPhysics(),
                                          itemCount: widget.entity.data.setmeal.length,
                                          itemBuilder: ((context, index) {
                                            return item(index);
                                          }))),
                                ],
                              ))),
                    ],
                  ),
                ),

                margin: EdgeInsets.all(AppConfig.logic_width(20)),
              ),
            ]),
          ),
          ///适用门店
          new SliverList(
            delegate: new SliverChildListDelegate([
              new Container(
                margin: EdgeInsets.only(
                    left: AppConfig.logic_width(20),
                    right: AppConfig.logic_width(20)),
                child: new Row(
                  children: <Widget>[
                    new Container(
                      padding: const EdgeInsets.only(left: 5.0),
                      alignment: Alignment.centerLeft,
                      child: new Text(
                        "适用门店",
                        style: TextStyle(
                          fontSize: AppConfig.logic_fontSize(35),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    new Expanded(child: new Container()),
                  ],
                ),
                height: AppConfig.logic_height(90),
              ),
            ]),
          ),

          new SliverList(
            delegate: new SliverChildListDelegate([
              new Container(
                decoration: new BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                      Radius.circular(10.0)),
                  border: new Border.all(
                      width: AppConfig.logic_width(0),
                      color: Colors.transparent),
                ),
                child: Container(

                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                            margin:
                            EdgeInsets.only(left: AppConfig.logic_width(20)),
//                          color: Colors.red,
                            child: Image.network(
                              widget.entity.data.manystore.image,
                              height: AppConfig.logic_width(100),
                              width: AppConfig.logic_width(100),
                            ),
                          )),
                      Expanded(
                        child: Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(
                              left: AppConfig.logic_width(20)),
//                          color: Colors.red,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                widget.entity.data.manystore.name,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(

                                widget.entity.data.manystore.address,
                                maxLines: 1,
                                style: TextStyle(
                                    color: Colors.grey,

                                    fontSize: AppConfig.logic_fontSize(20),),
                              )
                            ],
                          ),
                        ),
                        flex: 3,
                      ),
                      Expanded(
                          child: Container(
                            margin:
                            EdgeInsets.only(left: AppConfig.logic_width(20)),
//                          color: Colors.red,
                            child: Icon(
                              Icons.phone,
                              color: Colors.red,
                            ),
                          )),
                    ],
                  ),
                ),
                margin: EdgeInsets.all(AppConfig.logic_width(10)),
              ),
            ]),
          ),
          new SliverList(
            delegate: new SliverChildListDelegate([
              new Container(
                decoration: new BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.all(
                      Radius.circular(25.0)),
                  border: new Border.all(
                      width: AppConfig.logic_width(0),
                      color: Colors.transparent),
                ),
                child:Padding(padding: EdgeInsets.all(25),child:
                HtmlWidget(
                  widget.entity.data.manystore.content,
                ),),

              ),
            ]),
          ),


          ///体验shi
          new SliverList(
            delegate: new SliverChildListDelegate([
              new Container(
                margin: EdgeInsets.only(
                    left: AppConfig.logic_width(20),
                    right: AppConfig.logic_width(20)),
                child: new Row(
                  children: <Widget>[
                    new Container(
//                  height: AppConfig.logic_width(30.0),
//                  width: AppConfig.logic_width(6.0),
//                    color: AppConfig.widgetColor,
                    ),
                    new Container(
                      padding: const EdgeInsets.only(left: 5.0),
                      alignment: Alignment.centerLeft,
                      child: new Text(
                        "体验师推荐",
                        style: TextStyle(
                          fontSize: AppConfig.logic_fontSize(35),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    new Expanded(child: new Container()),
                    new Container(
                      child: new GestureDetector(
                        onTap: () {
                          ///分类点击事件
                        },
                        child: new Row(
                          children: <Widget>[
                            new Text("查看全部",
                                style: TextStyle(
                                    fontSize: AppConfig.logic_fontSize(20))),
                            new Icon(
                              Icons.chevron_right,
                              size: AppConfig.font_bigSize,
//                          color: AppConfig.widgetColor,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                height: AppConfig.logic_height(90),
              ),
            ]),
          ),

          SliverToBoxAdapter(
            child: Container(
              height: AppConfig.logic_width(700),
//                margin: EdgeInsets.only(top: 20),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(width:  AppConfig.logic_width(600), height: AppConfig.logic_width(700),
                    child: Container(
                      child: Card(child: Container(
                        child: Column(
                          children: [
                            Expanded(child: Container(

                              alignment: Alignment.centerLeft,
                              child: Row(

                                children: [
                                  Container(

                                    width: AppConfig.logic_width(100),
                                    height:  AppConfig.logic_width(100),
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                            image: NetworkImage('https://pic2.zhimg.com/v2-639b49f2f6578eabddc458b84eb3c6a1.jpg'),
                                            fit: BoxFit.cover
                                        )
                                    ),
                                    margin: EdgeInsets.only(left: AppConfig.logic_width(20)),


                                  ),

                                  Expanded(child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Expanded(child:  Container(
                                          margin: EdgeInsets.only(top: AppConfig.logic_height(10)),
                                          alignment: Alignment.centerLeft,
                                          child: Text("不会蹦跶的露露",textAlign: TextAlign.center,style: TextStyle(fontSize: AppConfig.logic_fontSize(20), fontWeight: FontWeight.bold,),),)),
                                        Expanded(child: Container())
                                      ],),

                                  ),)
                                ],),),flex: 1,),
                            Expanded(child: Container(color: Colors.blue,child: Row(
                              children: [
                                Expanded(child: Container(color: Colors.red,
                                  child: Image.network("http://static.caibeike.com/i/30667bfefd1b8a763d8d334901c613be-fi6H8b-bAOMwbAOMhj2@!s640p",fit: BoxFit.fitWidth,),
                                ),flex: 2,),
                                Expanded(child: Container(color: Colors.yellow,child: Column(

                                  children: [
                                    Expanded(child: Container(
                                      width:double.infinity,
                                      child: Image.network("http://static.caibeike.com/i/65c85b43cec0747e0585fc38c15c7d26-cKbNms-bMgCwbAOMhj2@!s640p",fit: BoxFit.fitWidth),),),
                                    Expanded(child: Container(
                                      width:double.infinity,

                                      child: Image.network("http://static.caibeike.com/i/65c85b43cec0747e0585fc38c15c7d26-cKbNms-bMgCwbAOMhj2@!s640p",fit: BoxFit.fitWidth),),)
                                  ],),),flex: 1,),
                              ],

                            ),),flex: 3,),
                            Expanded(child: Container(
                              padding: EdgeInsets.all(AppConfig.logic_width(20)),
                              child: Text("遛娃模式开启|家门口性价比超高的儿童乐园🌻时间匆匆又到了宝妈们开始忙碌遛娃的暑期时光了。👸大小姐在家没有安静多久就吵闹着想要出去玩。特殊时期不想去太远或者人多的地方🎠  家门口的中环百联新开了一家金宝贝探索小镇看着还不错那就带娃走起。",maxLines: 3,style: TextStyle(fontSize: AppConfig.logic_fontSize(20)),
                              ),)),
                            Expanded(child: Container(child:  Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  child: new ClipOval(
                                    child: new Image.network(
                                      "http://static.caibeike.com/i/83f0eeea35ed3d6e9638be0f73c2797b-IzI0dN-bMOMwOOkhp1@!c300",
                                      width: AppConfig.logic_width(50),
                                    ),
                                  ),
                                ),
                                new ClipOval(
                                  child: new Image.network(
                                    "http://static.caibeike.com/i/83f0eeea35ed3d6e9638be0f73c2797b-IzI0dN-bMOMwOOkhp1@!c300",
                                    width: AppConfig.logic_width(50),
                                  ),
                                ),
                                new ClipOval(
                                  child: new Image.network(
                                    "http://static.caibeike.com/i/83f0eeea35ed3d6e9638be0f73c2797b-IzI0dN-bMOMwOOkhp1@!c300",
                                    width: AppConfig.logic_width(50),
                                  ),
                                ),
                                Container(child: Text("13人点赞"),),
                                Expanded(child: Container()),

                                Container(child:Icon(Icons.favorite_border,size: AppConfig.logic_fontSize(25),),),
                                Container(margin:EdgeInsets.only(right: AppConfig.logic_fontSize(18)),child: Text("1060",style: TextStyle(fontSize: AppConfig.logic_fontSize(25)),),)
                              ],
                            ),),flex: 1,),

                          ],),

                      ),),),

                  );
                },
              ),
            ),
          ),
          ///图文详情
          new SliverList(
            delegate: new SliverChildListDelegate([
              new Container(
                margin: EdgeInsets.only(
                    left: AppConfig.logic_width(20),
                    right: AppConfig.logic_width(20)),
                child: new Row(
                  children: <Widget>[
                    new Container(
//                  height: AppConfig.logic_width(30.0),
//                  width: AppConfig.logic_width(6.0),
//                    color: AppConfig.widgetColor,
                    ),
                    new Container(
                      padding: const EdgeInsets.only(left: 5.0),
                      alignment: Alignment.centerLeft,
                      child: new Text(
                        "图文详情",
                        style: TextStyle(
                          fontSize: AppConfig.logic_fontSize(35),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    new Expanded(child: new Container()),
                  ],
                ),
                height: AppConfig.logic_height(90),
              ),
            ]),
          ),
          new SliverList(
            delegate: new SliverChildListDelegate([
              new Container(
              child:Padding(padding: EdgeInsets.all(8),child:
              HtmlWidget(
                widget.entity.data.content,
              ),),

           ),
            ]),
          ),
          ///免责说明
          new SliverList(
            delegate: new SliverChildListDelegate([
              new Container(
                margin: EdgeInsets.only(
                    left: AppConfig.logic_width(20),
                    right: AppConfig.logic_width(20)),
                child: new Row(
                  children: <Widget>[
                    new Container(
                    ),
                    new Container(
                      padding: const EdgeInsets.only(left: 5.0),
                      alignment: Alignment.centerLeft,
                      child: new Text(
                        "免责说明",
                        style: TextStyle(
                          fontSize: AppConfig.logic_fontSize(35),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    new Expanded(child: new Container()),
                  ],
                ),
//                height: AppConfig.logic_height(90),
              ),
            ]),
          ),
          new SliverList(
            delegate: new SliverChildListDelegate([
              new Container(
                padding: EdgeInsets.all(AppConfig.logic_width(20)),

                child: HtmlWidget(
                  widget.entity.data.mianzecontent,
                ),
              ),
            ]),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        shape: CircularNotchedRectangle(), // 底部导航栏打一个圆形的洞
        child: Row(
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: AppConfig.logic_width(20)),
                height: AppConfig.logic_height(100),
                child: Row(
                  children: [
                    Text(
                      "￥",
                      style: TextStyle(
                          fontSize: AppConfig.logic_fontSize(15),
                          color: Colors.red),
                    ),
                    Text(
                      "${widget.entity.data.price}",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: AppConfig.logic_fontSize(45),
                          color: Colors.red),
                    ),
                    Text(
                      "￥${widget.entity.data.originalPrice}",
                      style: TextStyle(
                          fontSize: AppConfig.logic_width(25),
                          color: Colors.grey,
                          decoration: TextDecoration.lineThrough),
                    ),
                  widget.entity.data.spellStatus=="1"?  Container(
                      margin: EdgeInsets.only(left: AppConfig.logic_width(10)),
                      height: AppConfig.logic_height(30),
                      width: AppConfig.logic_width(100),
                      padding: EdgeInsets.all(AppConfig.logic_width(10)),
                      decoration: new BoxDecoration(
                      color: Colors.white10,
                      borderRadius: BorderRadius.only(
                         topLeft:  Radius.circular(8.0),
                        topRight:  Radius.circular(8.0),
                        bottomRight:  Radius.circular(8.0)
                      ),
                      border: new Border.all(
                          width: AppConfig.logic_width(0),
                          color: Colors.red
                      ),
                    ),
                      child:Text("${widget.entity.data.spellNum}人团",style: TextStyle(color: Colors.red,fontSize: AppConfig.logic_fontSize(16),height: 1,fontWeight: FontWeight.bold),textAlign: TextAlign.center,) ,
//                      "￥${widget.entity.data.originalPrice}",
//                      style: TextStyle(
//                          fontSize: AppConfig.logic_width(25),
//                          color: Colors.grey,
//                          decoration: TextDecoration.lineThrough),
                    ):Container(),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: AppConfig.logic_height(100),
                color: Colors.blue,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        color: Color(0xFFFFB6C1),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Image.asset("asset/chat.png",width: AppConfig.logic_width(35),height: AppConfig.logic_width(35),),
//                              child: Icon(
//                                Icons.chat,
//                                color: Colors.red,
//                                size: AppConfig.logic_fontSize(30),
//                              ),
                            ),
                            Container(
                              child: Text("vip微信群",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontSize:
                                      AppConfig.logic_fontSize(20))),
                            )
                          ],
                        ),
                      ),
                      flex: 1,
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        height: AppConfig.logic_height(100),
                        color: Colors.red,
                        child: Text(
                          "一键下单",
                          style: TextStyle(color: Colors.white,fontSize: AppConfig.logic_fontSize(30),fontWeight: FontWeight.bold),
                        ),
                      ),
                      flex: 2,
                    )
                  ],
                ),
              ),
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.spaceAround, //均分底部导航栏横向空间
        ),
      ),
      floatingActionButton:FloatingActionButton(onPressed: (){

      }, tooltip: '上传',
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),

        backgroundColor: Colors.red,

      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,

    );
  }

  Widget header() {
    return Container(
      height: AppConfig.logic_width(610.0),
      child:
          Container(
            height: AppConfig.logic_width(610.0),
            child: Swiper(
              itemBuilder: (BuildContext context, int index) {
                return   widget.entity.data.attachfile==""|| widget.entity.data.attachfile==null?
                new Image.network(
                  widget.entity.data.smallimages.split(",")[index],
                  fit: BoxFit.fill,
                ):index==0?showVideo? player():Stack(children: [
                  new Image.network(

                    widget.entity.data.smallimages.split(",")[index],
                    fit: BoxFit.fill,
                    height: AppConfig.logic_width(610.0),

                  ),
                  Column(children: [
                    Expanded(child: Container()),
                    Expanded(child: Container(child: Row(children: [
                      Expanded(child: Container()),
                      Expanded(child: Container(child: IconButton(
                        onPressed: (){
                          setState(() {
                            showVideo=true;
                            controller.play();
                          });
                        },
                        icon: Icon(Icons.play_circle_outline,size: AppConfig.logic_fontSize(80),),),)),
                      Expanded(child: Container()),
                    ],),)),
                    Expanded(child: Container()),

                  ],)
                ],):new Image.network(
                  widget.entity.data.smallimages.split(",")[index],
                  fit: BoxFit.fill,
                );
              },
              itemCount:     widget.entity.data.smallimages.split(",").length,
            ),
          ),
//          widget.entity.data.attachfile!=""|| widget.entity.data.attachfile==null?   Column(
//            children: [
//              Expanded(child: Container()),
////              Expanded(child: Container()),
////              Expanded(child: Container()),
//
//              Expanded(child: Container(
//                child: Row(
//                children: [
//
//                  Expanded(child: Container()),
//
////                  Expanded(child: Container(
////                    child: Center(child: Container(
////                      child: Row(children: [
//                    Expanded(child: Container(child: Icon(Icons.play_circle_outline,color:Colors.grey,size:       AppConfig.logic_fontSize(80)),)):Container(),
//////                        Expanded(child: Container(child: Text("00.06",style: TextStyle(fontSize: AppConfig.font_smallSize),),),flex: 2,),
////
////                      ],),
////                      margin: EdgeInsets.only(top: AppConfig.logic_height(10)),
////                      decoration: new BoxDecoration(
////                        color: Colors.white10,
////                        borderRadius: BorderRadius.all(
////                            Radius.circular(25.0)),
////                        border: new Border.all(
////                            width: AppConfig.logic_width(0),
////                           color: Colors.transparent),
////                      ),
////
////                     height: AppConfig.logic_height(40),width: AppConfig.logic_width(120),),),
////                  )),
//                  Expanded(child: Container())
//
//                ],
//
//              ),)),
//              Expanded(child: Container()),
//
//            ],
//          )


    );
  }
  Widget player(){
    return Container(
      height: AppConfig.logic_height(610),
      child:
      Chewie(controller:controller ,),);
  }

  Widget item(index) {
    return Container(child: Column(
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),

          width: double.infinity,
          child: Text(
            "${widget.entity.data.setmeal[index].name}",
            style: TextStyle(
                fontSize: AppConfig.logic_width(30,), color: Colors.orangeAccent,fontWeight:FontWeight.bold ),
          ),
        ),
        Container(
            margin: const EdgeInsets.fromLTRB(20, 5, 0, 0),
            height: AppConfig.logic_height(50)*  widget.entity.data.setmeal[index].configjson.length,
            width: double.infinity,
            child:ListView.builder(
                itemCount:  widget.entity.data.setmeal[index].configjson.length,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: ((context,i){
                  return Container(
                    height: AppConfig.logic_height(50),
                    child:
                    Row(children: [
                      Text(
                        widget.entity.data.setmeal[index].configjson[i].name,
                        style: TextStyle(
                            fontSize: AppConfig.logic_fontSize(
                              25,
                            ),
                            color: Colors.black),
                      ),
                      Expanded(child: Container()),
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 15, 0),

                        child:  Text(
                          "￥${widget.entity.data.setmeal[index].configjson[i].price}",
                          style: TextStyle(
                            fontSize: AppConfig.logic_width(
                              25,
                            ),
                          ),
                        ) ,)

                    ],)
                    ,);
                }))


        ),
      ],
    ),) ;
  }

}

