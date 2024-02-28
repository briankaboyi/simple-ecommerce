import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:simplecommerce/widgets/text_widget.dart';

class CartProductWidget extends GetView {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
                './assets/image 1.png',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
            ),
          ),
          title: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      RichText(
          text: TextSpan(
              style: TextStyle(color: Colors.black),
              children: [
            TextSpan(text: 'Regular fit slogan\n',style: TextStyle(fontSize: 14)),
            TextSpan(text: 'Size L',style: TextStyle(fontSize: 12))
          ])),
      TextWidget(
          value: 'PKR 1,190',
          fontSize: 14,
          fontWeight: FontWeight.w300,
          textAlign: TextAlign.start)
    ],
          ),
          trailing: Column(
    children: [
      SvgPicture.asset('assets/deleteicon.svg', height: 18),

    ],
          ),
        );
  }
}
