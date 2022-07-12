import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class TransitPage extends StatefulWidget {
  const TransitPage({ Key? key }) : super(key: key);

  @override
  State<TransitPage> createState() => _TransitPageState();
}

class _TransitPageState extends State<TransitPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.network('https://c-ssl.duitang.com/uploads/item/201906/30/20190630154531_giopd.thumb.700_0.jpg',fit: BoxFit.cover,)
        ],
      ),
      
    );
  }
}