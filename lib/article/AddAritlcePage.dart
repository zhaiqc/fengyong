import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_shop/login/LoginPage.dart';
import 'package:flutter_app_shop/login/model/User.dart';
import 'package:flutter_app_shop/utils/AppConfig.dart';
import 'package:flutter_app_shop/utils/widgets/TrianglePath.dart';

import 'FileChoosePage.dart';

class AddArticlePage extends StatefulWidget {
  int id;

  AddArticlePage(this.id);

  @override
  _AddArticlePageState createState() => _AddArticlePageState();
}

class _AddArticlePageState extends State<AddArticlePage> {
  var top =AppConfig.logic_height(240);
  @override
  void initState() {

    new Timer(Duration(milliseconds: 100),(){
      setState(() {
        top=AppConfig.logic_height(0);
        new Timer(Duration(milliseconds: 200), (){
          setState(() {
            top=AppConfig.logic_height(15);

          });

        });
      });

    });


    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(child: Container(child: Column(children: [
          Expanded(child: Container(),),

          Expanded(child: Container(child:Row(children: [
            Expanded(child: Container(child: Row(children: [

              Expanded(child: Container(
                
              ))

            ],),),flex: 2,),

            Expanded(child: Container(child: Text("推荐一切你喜欢的"),),flex: 3,),
            Expanded(child: Container(),flex: 3,),
          ],),),),
        ],),),flex: 3,),
        Expanded(child: Container(),flex: 5,),
        Expanded(child: Container(child: Column(children: [
          Container(
            child: AnimatedContainer(
              
              margin: EdgeInsets.only(
                  top:top),
              duration: Duration(milliseconds: 200),
              height: AppConfig.logic_width(240),
              width: AppConfig.logic_width(120),
              child: Column(children: [
                Expanded(child: GestureDetector(
                  onTap: (){
                    if(new User().entity==null){
                      AppConfig.navigator(context: context,page: LoginPage());

                    }else{
                      AppConfig.navigator(context: context,page: FileChoosePage(widget.id));

                    }
                  },
                  child:ClipOval(child: Container(
                  width: AppConfig.logic_width(120),

                  child:  Icon(Icons.camera_alt,color: Colors.white,),color:AppConfig.mainColor,) ,) ,)),
                Expanded(child: Container(
                  margin: EdgeInsets.only(top:  AppConfig.logic_width(10)) ,
                  child: Text("新发布"),)),
              ],),
            ),
          ),
            Expanded(child: Container(child: Center(child: IconButton(icon: Icon(Icons.clear),onPressed: (){
              Navigator.pop(context);
            },),),)),

//
        ],),),flex: 4,),
      ],),
    );
  }
}
