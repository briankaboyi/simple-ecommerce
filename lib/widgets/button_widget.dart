import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simplecommerce/widgets/text_widget.dart';

class ButtonWidgets extends StatelessWidget {
  final String text;
  final double width, radius;
  final int color;

  const ButtonWidgets(
      {required this.text,
      required this.width,
      required this.radius,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: Color(color),
      ),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('./assets/shopping-bag-03.png',height: 17),
            SizedBox(width: 10,),
            TextWidget(
                color: Colors.white,
                value: text,
                fontSize: 16,
                fontWeight: FontWeight.w500,
                textAlign: TextAlign.start),
          ],
        ),
      ),
    );
  }
}
