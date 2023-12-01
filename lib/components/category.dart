import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  String? text;
  Color? color;
 VoidCallback? onTap;
   Categories({this.text,this.color,this.onTap});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(18),
        alignment: Alignment.centerLeft,
        height: 80,
        width: double.infinity,
        color:color,
        child: Text(text!,style: TextStyle(color: Colors.white,fontSize: 20)),
      ),
    );
  }
}
