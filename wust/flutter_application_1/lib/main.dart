import 'dart:math';

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TabViewRoute2(),
    );
  }
}

class Date {
  int year = 2022;
  int month = 7;
  int day = 11;
}

var date = Date();

class TabViewRoute2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List tabs = ["最新", "最热", "学校"];
    List<Widget> content = [
      ListView(
        children: [Text("敬请期待")],
      ),
      ListView(
        children: [Text("敬请期待")],
      ),
      ListView(
        children: [GestureDetector(child: 
          Container(
            height: 150,
            width: 200,
            color: Colors.blueAccent,
            alignment: Alignment.topLeft,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                   /* Container(
                      height: 70,
                      width: 40,
                      child: TextField(style: TextStyle(color: Colors.red),
                      maxLength: 8,)),*/
                    Text(
                      "titl qweqwqweqweweqwqe",
                      maxLines: 2,
                      strutStyle: StrutStyle(fontSize: 6),
                      style: TextStyle(overflow: TextOverflow.ellipsis,),
                    ),
                    Text("conteqweqweqweqweqweqweqweqwnt",style: TextStyle(color: Colors.blueGrey),),
                    Text("${date.year}-${date.month}-${date.day}")
                  ],
                ),
                Column(children: [Image.network(
                  "https://p1.ssl.qhimgs1.com/sdr/400__/t012c024345f7f47ed1.jpg",height: 120, width: 100,  ),
                  Text("热度741",style: TextStyle(color:Colors.red),)
                ],
                )
              ],
            ),
          ),
           onTap: () => page_2()

          ,)
        ],
      )
    ];
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text("wust"),
          bottom: TabBar(
            tabs: tabs.map((e) => Tab(text: e)).toList(),
          ),
        ),
        body: TabBarView(
            children:
                content /*tabs.map((e) {
            return KeepAliveWrapper(
              child: content[e]
            );
          }).toList(),*/
            ),
      ),
    );
  }
}

class page_2 extends StatelessWidget {
  const page_2({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("张子枫"),
      ),
      
    );
  }
}



/*
class news {
 final String title;
 final String content;
 news(this.content,this.title);
}

class KeepAliveWrapper extends StatefulWidget {
  const KeepAliveWrapper({
    Key? key,
    this.keepAlive = true,
    required this.child,
  }) : super(key: key);
  final bool keepAlive;
  final Widget child;
 
  @override
  _KeepAliveWrapperState createState() => _KeepAliveWrapperState();
}
 
class _KeepAliveWrapperState extends State<KeepAliveWrapper>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return widget.child;
  }
 
  @override
  void didUpdateWidget(covariant KeepAliveWrapper oldWidget) {
    if(oldWidget.keepAlive != widget.keepAlive) {
      // keepAlive 状态需要更新，实现在 AutomaticKeepAliveClientMixin 中
      updateKeepAlive();
    }
    super.didUpdateWidget(oldWidget);
  }
 
  @override
  bool get wantKeepAlive => widget.keepAlive;
}
*/

待解决问题，点击响应事件