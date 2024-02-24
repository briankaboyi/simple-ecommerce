import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class button_widgets extends StatelessWidget{

  final Widget widget;
  final double height,width,radius;
  final int color,borderColor;

  const button_widgets({required this.widget, required this.height, required this.width, required this.radius, required this.color, required this.borderColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height.sp,
      width: width.sp,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        gradient: LinearGradient(
          colors: [
            Color(0xffFBB837),
            Color(0xffFDE211),
          ],
          begin: Alignment.bottomRight,
          end: Alignment.bottomLeft,
        ),
        color: Color(color),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: widget,
      ),
    );
  }

}