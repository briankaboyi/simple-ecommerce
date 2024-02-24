import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:simplecommerce/widgets/text_widget.dart';

class ProductWidget extends GetView {
  final String img;
  final String title;
  final String price;

  ProductWidget(
      {super.key, required this.img, required this.title, required this.price});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(img),
            TextWidget(
              value: title,
              fontSize: 14,
              fontWeight: FontWeight.bold,
              textAlign: TextAlign.start,
            ),
            TextWidget(
              value: price,
              fontSize: 14,
              fontWeight: FontWeight.w200,
              textAlign: TextAlign.start,
            ),
          ],
        ),
      ),
    );

  }
}
