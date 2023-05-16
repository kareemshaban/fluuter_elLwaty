import 'package:flutter/material.dart';


class ColoredContainer extends StatelessWidget {

  final Color color ;
  final String txt ;
  const ColoredContainer(this.color , this.txt ,[Key?key]):super(key: key);
  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(color: color , shape: BoxShape.rectangle),
      width: 100,
      height: 100,
      child: Center(child: Text(txt)),
    );
  }
  
}