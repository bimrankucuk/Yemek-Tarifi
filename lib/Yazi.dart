import 'package:flutter/material.dart';

class yazi extends StatelessWidget {
  late String icerik ;
  late double yaziBoyut;


  yazi(this.icerik, this.yaziBoyut);

  @override
  Widget build(BuildContext context) {
    return Text(icerik,style: TextStyle(fontSize: yaziBoyut),);
  }
}