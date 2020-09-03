import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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


//                      decoration: new BoxDecoration(
//                        image: DecorationImage(
//                          fit: BoxFit.cover,
//                          image: NetworkImage(
//                            "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxITEhUTEhIVFRUVGBUXFRcXFxUXFRUYFRcWFxcXFRUYHSggGBolGxUVITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OGBAQFy0dHx0rLS0rLS0rLS0vLS0tLS0tLS0tLS0tLSstLS0tKy0tLS0rLS0tKy0tLy0tLS0tLS0tLf/AABEIAQMAwgMBIgACEQEDEQH/xAAcAAACAwEBAQEAAAAAAAAAAAAAAQIDBAUGBwj/xAA/EAABAwIEAwUFBAgGAwAAAAABAAIRAyEEEjFBBVFhBiJxgZETMqGx8JLB0eEHI0JSYoKi8RQVM1NyspOjw//EABkBAQEBAQEBAAAAAAAAAAAAAAABAgMEBf/EACYRAQEAAgICAgIABwAAAAAAAAABAhEDIRIxBEETYQUiUXGRocH/2gAMAwEAAhEDEQA/APmmJwNWmzNVpvaSZuI1FpvIM8wruzWM/wAPWZiA3O6k4Oa3RrrEEEi41nSLL0naTG0K0OY+SQQ5pBAPmYC8nwtmRxe4wG2P8UiC0EHWCuUzlWPoPDuNNx1XEEhrGwKpbaXMY147/eGcMOV5m9hyXzrE0MsGHFrpyuIjPG456hJ9bI9xp90GQBM912zudlW+u52XM4nKIbN4EzA6SStrW6ljC21MljXtY2oBEmCCXB2xkAhXVOHObSD87RTe4Q3MM5ILmtJb6mRIgrns911rmIk8jNgptxOQ5iwOdlhua7WgyCcu+tuRTaaWcUvkIpNplrAx2QnvuYXAvcDo87+C58rTUxLiMpNrGBzAiT1WYooKSFJrUQNnTmgW8lo9jYHaLrKgv/xBIOYydiblVNNtfDxUW6pkICUBqbWzuAooAFMpmmYmDGkwYnlPNRzbbILQ/n4eChlXQ4lw9jWMq0amem85QHQKrXgAuD2Dbkd1nZWY1osS7fkPzQV0XbLblYxnebJIm+iy1LCQdelo8VS5xOpRA4ibBTYBDgRcxBO0aquCtXs6fspLhnJ0vIA+EH7lYqn2bf32/H8EKlCg6OKYGklxzESBy6RzVWHqCMrgY+R5hUvJd5fNPD5gZAXPx6WdPQYzCUH02kNbTge82xI2zSYK51Lg5c2WuB8jt4rNUdUico8egsLcgp4fH15hpLjygHTpHJc5jySdZLuKTSADgXCWkDnPOEqIbFzouqztNULC14a5sQBlaRPUOmy42JeC4kNyzsNPJdZu+4b/AEbjvpt9yqjZSuVJzY31Hp0W0tVJhyRQiNp4h+q9mGgGTLtyOXRYx4KKaAlMxNkkIAhNKU4QbMLWc6maPfeXub7NgJyh5IGbLu4ju+ajjeGVqTzTqsLHBxYZ0DhBIzaWDh6qrBYl1Koyqww9jg5piYIMix1UsVinVXufUeXPcS5xO5OpQQLQHEF1gT3m3BI0I0srKNMagyVBzAADzVcjkgb2RqpU6Ym+ikwnSJVb3cvz8EFjo2UGkciVXKlKCwln7rvUfghUyhBqZTMeO3h1VuHc0DvAgc5t+SeD4k9jpaJJGU2mxj8Au7jMNTqfrMPq67qdr87bGeVisX0rg4rEPZ3W1AWndtj4FZBsRIP3q3FupuINNpb+8DoDzH4KzAUy6QByvuArOojG4pLdj6TAYBvz5rFlWoAyI9Qh7iTJ1Oq0YjESxrB+z96zIAlCGq6uQSSGZAQIF/UTzQUoQhAJgKKnAiZvOnTnKBAIypK6oyHEEOBGx1QVxBuNNVEBSIKGvQRUgbJ6bJTKCx+JcRlsBvG/iVXTN+iTgpNpmJt6hBe1lM/tR4gqD6I2IPgoGmOYUCBzREvZFCMh6oRQwnYwt9drwwFpsJsBds3udY01XPYVc2vExIB94dFmqoP911Gu9kz+I/AKvidX2tT2jnUw50SGNyABoAByi1wNllr15IIJn5coVRVUfJUqDwDJmIIsYVZKFRfQqs9oHVGkskZg0wY6E7oxZYXu9k1waT3Q4guA2k7lUK2lViY3kGwNjrE7oK3sgxbyuhzyYkkwIE7AbDopVi2e6CB1181BBOGwLmbza07AKtNxlTosBIBMIIKbCRcK2rSYNHz4SVVI1BQL2dpVrqdpJupmo3JEd6Zmdo0j71Q+pKCM8ypNaDuoIhBPKR1SKQBSQCn7RQQgbmqQZuVNjIuUyM1ifBBIYgJKghJBbh6LnODGiSTACsxGFeww8REqRxL21faDuu1EdQtFfjNWpaoQR1a0keCI5xdp5q44buhwc02zOAIBbeIg6nTRVSMvUnSLDqDKrRTQhMlAkIQCgEITCBFCAE4QJWhwAG5UMqWVAw9RlCZQJSJGyikgcpucopoBEIRKBkqTX3UEIJ5UKCEGnFvBdI2VDloq4cBkkwdhum/GSxrC1tpvFzPM7qDKD9fehrZRHJDQqIpq1rgRB8vrmg0xsmxSmgLs4LBN9k94DakRAnvNBF5G35KjjAKUCOs/BSOX60VZPooJWCSKYnQgp5UBMJR4JFNqAnqkpF3JKUCQhCBJoQgEJJoBCEIHKSEILX3vqkwW0Sa8zqmx11BbScQCLx0UTSBuE3PtCGzGbadtvFEUAXV1R9ssCdzzU2Rmn4dFNjxvf5JRkbTJuBawnaSncS0Hxg2P4rU6uSC1o9BZRpYfmCm1ZoMaL0/6MuGMxHEaLKglrA+rGzjTEtB6ZiD5LiVqmzQAF2Ox+IOExlHETZjoeJHuPBa74EnyVlR9y452XwmNYademM0ENqtAFVnVr9/AyDuF+fu1HZ6vgK7qFYdWPHu1WTAe37xqD6n9K16gID2mQbgrh9quA0OJUBSqktdTcHMqNjOy4DgJ2cLQbaHYKXkw8vHfa+N1t8Q7Ldj8Rje82KdEGDVeDEjUMaLvI8gNyF6Hi/6PqLKTjh61Z9ZoJAcKeR+W5aA0AtJExc3hfTa2Hp0abaVNoYxjQ1jRoANP7qvhuGGvNa3N6NXW35zBTWzjVHJia7AIDa1ZoHICo4D4QsagSaEkDlBKEIBCEIBCAEIBCEIABWMEXIsoAqQJNkFgeClUb5FSpYcrTUokiLc+SiMJO/RTD58FJzeag5FWtrxp8grDjD+8fQLM0oyyQGgkkgAAEkk2AAFySdkRbUql24+Cy1HAGCR6r7J2K/RMwNbW4iC55uKAdDGcvaubdzugMDS6+hMwGGoMy0qFJjRs1jWj4BMrMJ5ZXUWd9R4D9E/ahuIoHB1HfrKQ/Vkn36Ys0+LfdPTKea9dh35ahnYGfELj8X4JRfUbWp0206rDLXtAa4EdRqNiDYgkFajjQ4e0NiAQ8ciI+vRfA+X8rjz5MeTj94/7e/h4MvGy/aOOqlz108GRE8hdcvB4d9QyAYO8W9Uccq4loyUMNVc0e88Ad7o1szHWF3/hl5PLLPLdn/V5+OWzCXT5DxTs7jq+IrVRhnNFSpUeMxY2A5xLZBdMwQuVxfgWJw0e2pFodo6Q5pPKRofFfWsPxrv5KrHMdycC13o6CuhjcGzEUyx7Q5rhBG35L6s5NueXxZJ7fBELvdq+zFTBvmC6i49x/L+F/Xrv8FwV0l28lll1QhCEQIQhAIQiEAhCEEpVrHGLQFBw6afFQyoLr80gFWJUg5ETkSouYdPgk2p0UCUUOaQvpn6C+HUamJrVahaatFrfYsOvfzB9UA6kABttM55hfNC+0enROjVcxwcxzmPbdrmktc082uFwfBUfrhzCs1fDzuF+dKXb7igGUY2rA5im4x/yc0krLiO0vEMQQw4qs4uIa0B+TM5xgA5I1JGqzyY4546pLY/QlVtIEtLw5w1a27hOk8tFw8dwRtZ4a1vsw6SXBzs5LWuLJHuxMWhdLstwCnhMMyiwAkXqP3qVD7zyd5PoABsunh6Y9q0RzPwK+Nz/ABZx82GOE1LZv/L18XPljLd9vH1eEYiL1iT4Kijw7FtNnSpcE7cUnVq+HxZDHUq1VlOroxzWVHNAef2XADU2MbHX17MY0AEAOadHNuD4EWXXh/h+eOe/Pr+zpyfKy1q4+3lsQ+sW5MRR9qz4t6tIu09QsWHqCjUyZy5jhmYT70XBDtswIIPOx3Xs8XxeixhfVc2m0aueQ1o83ar5D2w7W06uJaaAIpsEB2mcuIJcG8rAXvYr6XJj1v7cvj8n82r6r3+Jw9OrTc14D2OEOaRIIXx/th2Wfg35my6g49127T+488+R38V9E7N8cFQAE3XocRhqdVjmva1zXCC0gEEciFnDJ05uL6r88IXv+0v6OnNJfhDmH+0494dGPOvgfUrwVak5ji17S1zTBa4EEHqCusrx5Y3H2ihCIRkIJQmyJE6bxrHRBFNIpoLGm6lUZyUQrtlEVNU3gKLoATpwbT9clRWVAhTqA6HZRlFIJwmQRaI8kZSgQC7HZBw/x2FzRHt6OvPOI+MLkBqsI5EtNoI1BFwQdig/VWDfISLw1xcbBrXEnkBqfRed7A9oBjMOKkj2je5WaNqgAkxsHDvDxjZc/wDSrx1uGwb6eb9biGmkwTfK61R/gG2nmQtXGXtHxN2PL6j6n+497/tuLvvWqliqrZNOpUp/8HuZP2SFx2m69JgsOHsBXDO+Pb3cG+SXF5/G16j3TVe+o4aOe5z3eriSo06i6PGMAWjMNN1y6bZW5ZZtwzwywz8Xo+CY0tcD15r6Vw7iZc0eC+UcPoEZSXZWk+8+zfEDV2mwK7NLtFkloFxGV0y194NgJbvf4bLn+PLfT1znw8NZe31ShUa6xvzXlu2vCqWIo1JAFeiJY/dzdcruYOnxXlHdrsULtyN5b272s+HwV+C4rWqF3tSHBwIcRAcBe4I5RMLr+PL6cLz8fqy6eNw2KLA6GtOYR3mgkdRyKpcLqzE4c03uYTJaSJGhjQjoRfzUHuFrAQIOt+pn7uS08pIQhQCEk0EgYVzDIPRZ02k7boG4qIKbhFkkASmCkgIJB06+v4plsfiNEnMhWU7iOSCuEgrHtuoFEdLgHH8Tg6hqYapkcRldIDmuGozNcIMbHUX5lZeK8TrYmoateo6pUdALnRoNAALNGtgALlUi+gUiyNR4oqpq9D2axV8h0K4UDYLRQrinpd39Lfx+V+iznj5TTtw8n48tvYcVpUww+0cACNzc+A1K8o3EtZam0OP7zhpp7rZjYiTNjss1ao95lzi49T4/n8VZRpgaj63+E/BXDjmK83PeS/0TaC85nkknUk3NrmT0g/ylaRS2yib+pt/2H9Stga2JGviJt55Xj+cKVOm7Qa6fIA26imfNdpHmW4fCBwnnOniIP/tHounw/Dw6SHCQTJ87AeErFhm5i1u5gAAc9JJ6Pb9ldvBlpIkgdJ5jnOgkDyK6Yxm14XjJ/X1P+R+FljW7jjMuIqj+I+hgj4FYV577bgQhCihCEIBCSZKAQhCACIQAmiJTZDHXSBQEFuINgqEySUiEUw48ymXHmohSmUBKsptVRN1axUamNG0fXP0/pPNXNaIHXTTpAPnlHkVnadvh9enqtNEM1k/lf4xmPmFuIuojSI2jmfdj/wCfqVfQv3ZgGwnrAE9f9I+ShSGawsdPMm/9T/6VqDmHUgTobmJ5DoKjD/IVuMmKTbdeciM0XnoKh/8AGt+Erwbm/WRB3vPM1PsBc32km8EG8XFjJPwdUHkrg+LEW3mbka3/AJavqtRHP7Y4aKjarR3ag1/ibz5SMtlwF7Wuxtem6iQATdptZw/akbSSI5SvFOaQSCIIkEciLELlyTV21jegkmhc2ghCEAhCEAmCkhA8yENUpRC2SCabAilmSLlZn2I/FDmBEVKYbaVBAKKFdQKpUqblRrfr+Hy+tlNj4+tb/f8AJJjZ1+un1ySI/v8AXotI2HENtck7201v43efIIZcyd5kctZg+b/shZGj6+75D1WujA573+fqA77a1EaWNJBk2GuttXECfCoraWGA2LuZiBY38R3anqlSaB1I2teJn/o/7S1MBkST8BJER11a37a3IzUqNEiBBkxLjvcz4nMT6Lg9pMEadYuHuv7wPX9oHrN/Nejbidmy47SeWhAAESMt/wCMqvHsNZjqbuuU8nDQ6mBNvAlXLHcSXVeLQkmvM6hCEIBCEIBCEwgJhASJTaUFkWVehVr9glXFxtZEJxUMyAUiUAhCEUICEKjVSqwrjVkrCCrKb1pG2nH0BvYXPiStdGq0a6SPTX/qwD+Zc1pdqNAYzbAkbnYwgVRuMx66fntc/uqyo62HxZzAMBdBEAXmIi3Ug/aVrKjti1kaXlxgAiwm/dbrAlpXKp1qjrNk9Bcag+GoC20cA83dDRzu4i/oty7StX+IbF5drvAtYe7qIyb7K2jiWtNgG3MaEgdDc6WsROqhT4fTAklx01+Ftl18FTYPcZG02HiJ5eW66SVi2PH9oKRFXMZ7/eu0tnaROq5q+hcVw7K7MjwBuxwN2nTTrPp6jwmPwbqTyx2oggjQg6ELjyYau28ctqJQhC5NhJNCBIQmgEApIQTmStFZnd8FmaYKk+qTqiIJJpIoTSTQJNCAgYKk62qRbH3KdKlmudFpFZcSVZSA3UnNAVcSg30+JFogAAfWqs/zJ33rnNpStFHBuMfXotS1OnTw+NJO0b2vrtG67vt8rCXECB1JM/LwXnqOFyzO31br+S2uYXsjafjHxXXG1nJlq8WcXWJj4mNL+anxKkK1IOH+ozTeW7g/Mfmn/k8iZgRNoM3jmtNPhzaTv9Q6AnS25TVvVTc+nlw0IXcfwjDkk+1cJJMBpgTsELj+LJvzjz6EIWGghCEAhCEAhCEAhCEAhCEAhJNAStVP3YCyq6jWLVqI0UsGStVLh5+X0Fnw+PM38lrOJJE6XW54s3awYRjdb+H4q6tXa0R/eL2/Nc+viyOnh8Fz6tclW5a9GnQr43l9eaqw/E3Mm9jr1XPWuhRAu4hYlrWmh+Pqv0n7lXWpV9XA+N/oK5mNYLAfX1810uHYtrjB5X/Fbmr7rN6+nnfZuTXtPZs/d+DUlv8AF+2fP9PDIQheZ1CEIQCEIQCEIQCEIQCEIQJCaEEmKKEKhtW+me6OqELWKM1RypdohCguwrRI+t1PGGEIV+hnYF0uG++PD5xKEJj7K9TRpgtBjYfJCEL0uT//2Q==",
//                          ),
//                        ),
//                        color: Colors.white,
//                        borderRadius:
//                        BorderRadius.only(bottomLeft: Radius.circular(25.0),bottomRight: Radius.circular(25.0),topLeft: Radius.circular(15.0),topRight: Radius.circular(15.0)),
                                    
                     Container(
                         decoration:BoxDecoration(borderRadius:BorderRadius.only(topLeft: Radius.circular(15.0),topRight: Radius.circular(15.0)),color: Colors.white),
                       margin: EdgeInsets.only(top: AppConfig.logic_height(300),),
                       child: Column(
                         children: [
                       Container(height:AppConfig.logic_height(70),),
                         Expanded(child:  Container(child: Column(children: [
                           Expanded(child: Container(
                             margin:EdgeInsets.only(left: AppConfig.logic_width(30)) , child: Text("蜂蛹用户",style: TextStyle(fontWeight: FontWeight.bold,fontSize: AppConfig.logic_fontSize(30)),),width: double.infinity,)),
                           Expanded(child: Container(child: Row(children: [
                             Expanded(child: Container(
                               margin: EdgeInsets.only(left: AppConfig.logic_width(20)),

                               child: Row(
                               children: [
                               Expanded(child: Container(child: Text.rich(TextSpan(text: "7",
                                   style: TextStyle(fontSize: AppConfig.logic_fontSize(25), color: Colors.black,fontWeight: FontWeight.bold),
                                   children:[       TextSpan(
                                   text: '关注',

                                     style: TextStyle(fontSize: AppConfig.logic_fontSize(15), color: Colors.black,fontWeight: FontWeight.normal),

                                   )


                               ] )),)),
                                 Expanded(child: Container(child: Text.rich(TextSpan(text: "7",
                                     style: TextStyle(fontSize: AppConfig.logic_fontSize(25), color: Colors.black,fontWeight: FontWeight.bold),
                                     children:[       TextSpan(
                                       text: '粉丝',

                                       style: TextStyle(fontSize: AppConfig.logic_fontSize(15), color: Colors.black,fontWeight: FontWeight.normal),

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
                              "http://static.caibeike.com/i/83f0eeea35ed3d6e9638be0f73c2797b-IzI0dN-bMOMwOOkhp1@!c300",
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
