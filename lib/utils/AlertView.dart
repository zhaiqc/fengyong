import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_shop/home/model/shop_entity.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'AppConfig.dart';

class AlertView extends StatefulWidget {
 var onTap;
 ShopEntity entity;
  AlertView({
    Key key,
    this.onTap,
    this.entity
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _AlertViewState();
  }
}

class _AlertViewState extends State<AlertView> {
  bool isBig;  Map<String, dynamic> map;
  @override
  void initState() {
    widget.entity.data.setmeal.forEach((element) {
      print(element.toJson());

    });

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(child: new Container(
      decoration: new BoxDecoration(
        borderRadius: new BorderRadius.all( Radius.circular(10.0)),
      ),
      child: new Column(
        children: <Widget>[
          new Expanded(child:Material(
            color: Colors.transparent,

            child: InkWell(

            child: new Container(color: Colors.transparent,),onTap: (){
            Navigator.of(context, rootNavigator: true).pop();

          },),)),

          new Container(
            width: AppConfig.logic_width(600.0),
            child: new Column(
              children: <Widget>[
                new Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  height: AppConfig.logic_width(150),
                  child:  Row(
                    children: [
                      Expanded(
                        child:Container(
                          decoration:new BoxDecoration(
                            image:DecorationImage(image:NetworkImage( widget.entity.data.smallimages.split(",")[0],),fit: BoxFit.fill ),
                            borderRadius: new BorderRadius.all( Radius.circular(10.0)),
                          ),) ,
                      ),
                      Expanded(
                          flex: 3,
                          child: Container(
                            margin:EdgeInsets.only(left: AppConfig.logic_width(30),top:  AppConfig.logic_width(10)),

                            child: Column(
                              children: [
                                Expanded(
                                  child: Container(
                                    child: Text(
                                      widget.entity.data.title,
                                      maxLines: 2,
                                      style: TextStyle(
                                          height: 1,
                                          color: Colors.orangeAccent,
                                          fontSize:
                                          AppConfig.logic_fontSize(25),decoration: TextDecoration.none,),
                                    ),
                                    width: double.infinity,
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    margin:EdgeInsets.only(top: AppConfig.logic_width(10)),
                                    child: Text(
                                      "${widget.entity.data.priceTitle}",
                                      style: TextStyle(
                                        color: Colors.black,
                                          fontSize:
                                          AppConfig.logic_fontSize(30),decoration: TextDecoration.none,fontWeight: FontWeight.bold),
                                    ),
                                    width: double.infinity,
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ],
                  ),
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 10.0, bottom: 10.0),
                  alignment: Alignment.center,
                ),

                AppConfig.lineView(),

                Material(
                    child: new Container(
                      color: Colors.white,
                      height: AppConfig.logic_width(700.0),
                      alignment: Alignment.centerLeft,
                      child: new CustomScrollView(
                        scrollDirection: Axis.vertical,
                        slivers: [
                          new SliverList(
                            delegate: new SliverChildBuilderDelegate(

                                  (BuildContext context, int index) {
                                return item(index);
                              },
                              childCount: widget.entity.data.setmeal.length,
                            ),
                          ),

                          new SliverList(
                            delegate: new SliverChildListDelegate([
                              Container( margin:             const EdgeInsets.all(15.0),
                                child: HtmlWidget(widget.entity.data.rightsandinterestscontent),),

                            ]),
                          ),

                        ],
                      ),
                    )),

                AppConfig.lineView(),
                new Container(
                  height: AppConfig.logic_width(70.0),
                  margin: const EdgeInsets.all(10.0),
                  width: AppConfig.logic_width(400.0),
                  alignment: Alignment.center,
                  child: new Material(
                    color: Colors.red,
                    borderRadius:
                    new BorderRadius.all(const Radius.circular(10.0)),
                    child: new InkWell(
                      borderRadius:
                      new BorderRadius.all(const Radius.circular(10.0)),
                      onTap: () {
                        //
                        widget.onTap();
//                        Navigator.push(context, new MaterialPageRoute(builder: (_) => new Shop()));
                      },
                      child: new Center(
                        child: new Text(
                          "查看详情",
                          style: AppConfig.normalTextStyle(
                              Colors.white, AppConfig.logic_fontSize(30)),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            decoration: new BoxDecoration(
              color: Colors.white,
              borderRadius: new BorderRadius.all( Radius.circular(10.0)),
            ),
          ),
          new Expanded(child:Material(
            color: Colors.transparent,

            child: InkWell(

              child: new Container(color: Colors.transparent,),onTap: (){
              Navigator.of(context, rootNavigator: true).pop();

            },),)),        ],
      ),
    ),) ;
  }

  Widget item(index) {
    return Container(child: Column(
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),

          width: double.infinity,
//                        color: Colors.blue,
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
