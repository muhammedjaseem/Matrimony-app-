import 'package:flutter/material.dart';
class CustomText extends StatelessWidget {
  final String ?text;
  final double ?size;
  final Color ?color;
  final FontWeight ?weight;
  CustomText({ @required this.text, this.size, this.color,this.weight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,style: TextStyle(fontSize: size?? 16,color: color ?? Colors.black,fontWeight: weight ?? FontWeight.normal),
      // maxLines: 1,
      // overflow: TextOverflow.fade,
      // textDirection: TextDirection.rtl,
      // textAlign: TextAlign.center,
    );
  }
}
