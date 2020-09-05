import 'dart:convert';
import 'dart:html';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_2d_amap/flutter_2d_amap.dart';
import 'package:flutter_app_shop/article/view/UploadView.dart';
import 'package:flutter_app_shop/article/view_model/UploadViewModel.dart';
import 'package:flutter_app_shop/login/model/User.dart';
import 'package:flutter_app_shop/utils/AppConfig.dart';
import 'dart:html' as html;

import 'package:flutter_app_shop/utils/LogUtis.dart';
import 'package:toast/toast.dart';

import 'model/upload_entity.dart';

class FileChoosePage extends StatefulWidget {
  int shoplist_id;

  FileChoosePage(this.shoplist_id);

  @override
  _FileChoosePageState createState() => _FileChoosePageState();
}

class _FileChoosePageState extends State<FileChoosePage>  implements UploadView{
  List<UploadEntity> images =new List();
  final FocusNode contentFN = FocusNode();
  TextEditingController contentController = new TextEditingController();
  UploadViewModel _viewModel;
  @override
  void initState() {
    _viewModel =UploadViewModel(this);

    _selectFile();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:build_app_bar(),
      body:CustomScrollView(slivers: [
                  build_banner(),
        build_input()
      ],),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,

      floatingActionButton:InkWell(
        onTap: (){
          _viewModel.addArticle(shoplist_id:widget.shoplist_id,content: contentController.text,images:images );
        },
        child: Icon(Icons.send,color: AppConfig.mainColor,size: AppConfig.logic_fontSize(80),),) , );

  }
  
  
  Widget build_app_bar(){
    return new AppBar(
      backgroundColor:AppConfig.widgetColor,
      elevation: 0,
      leading: new GestureDetector(
        onTap: (){
          Navigator.pop(context);
        },
        child: Icon(Icons.arrow_back_ios,color: Colors.grey,),
      ),
      actions: <Widget>[

        new FlatButton(


          onPressed: () {
            _selectFile();

          },

          child: new Text(
              "选择图片",
              style:TextStyle(color:AppConfig.mainColor)),
        )
      ],
    );
  }

  Widget build_banner(){

  return         images.isNotEmpty? new SliverList(
      delegate: new SliverChildListDelegate([
        new Container(
//          height: AppConfig.logic_width(350.0),
//         color: Colors.red,

          child: CarouselSlider.builder(
            itemCount: images.length,
            itemBuilder: (context, index) {
              return  new Image.network(
                images[index].data.domainUrl,
                fit: BoxFit.cover,
              );
            },
            options: CarouselOptions(
              viewportFraction:1,
              initialPage: 0,
              scrollDirection: Axis.horizontal,
            ),

          ),
        ),
      ]),
    ):new SliverList(
    delegate: new SliverChildListDelegate([
      new Container(

      ),
    ]),
  );
  }



  Widget build_input(){
    return         new SliverList(
      delegate: new SliverChildListDelegate([
        new Container(


          child: new TextField(
            controller: contentController,
            focusNode: contentFN,
            style: AppConfig.normalTextStyle(Colors.black, AppConfig.font_midSize),
            decoration: new InputDecoration(
              hintText: "分享你的精彩，让全世界为你点赞...",
              hintStyle: AppConfig.normalTextStyle(Colors.grey, AppConfig.font_midSize),
              border: InputBorder.none,
              fillColor: AppConfig.searchBackgroundColor,
              filled: true,

            ),
//            maxLength: 1000,
            maxLines: null,
            maxLengthEnforced: true,
            keyboardType: TextInputType.multiline,

            textInputAction: TextInputAction.newline,
            autofocus: true,

          ),
          margin: const EdgeInsets.all(10.0),
        ),
      ]),
    );
  }



  _selectFile() {
    html.InputElement uploadInput = html.FileUploadInputElement();
    uploadInput.multiple = true;
    uploadInput.accept="image/png, image/jpeg";
    uploadInput.click();
    uploadInput.onChange.listen((e) {
      final files = uploadInput.files;
      uploadInput.files.forEach((element) {
        LogUtils.v(element.name);
        upload(element);
      });
      setState(() {

      });
    });
  }

  upload(var file){
    final html.FormData formData = html.FormData()..append("token", new User().entity.data.userinfo.token)..appendBlob('file', file,);

    html.HttpRequest.request(
      AppConfig.host+"common/upload",
      method: 'POST',
      sendData: formData,
    ).then((HttpRequest httpRequest) {
      LogUtils.d(httpRequest.responseText);
      UploadEntity entity =new UploadEntity().fromJson(jsonDecode(httpRequest.responseText));
      setState(() {
        images.add(entity);

      });
    }).catchError((e) {

    });

  }






}
