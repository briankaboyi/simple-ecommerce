import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:simplecommerce/controller/home_controller.dart';
import 'package:simplecommerce/widgets/text_widget.dart';

class ProductPage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: InkWell(
            onTap: () {
              Get.back();
            },
            child: Container(
                child: Image.asset(
              './assets/arrow-right.png', width: 24, // Set the desired width
            )),
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: Center(
            child: TextWidget(
                value: 'Details',
                fontSize: 24,
                fontWeight: FontWeight.bold,
                textAlign: TextAlign.start),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0, top: 30.0),
            child: SvgPicture.asset('assets/Group 3.svg'),
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            width: Get.width,
            child: Image.asset(
              './assets/image 1.png',
              fit: BoxFit.cover,
            ),
          ),
          TextWidget(
              value: 'Regular Fit',
              fontSize: 24,
              fontWeight: FontWeight.bold,
              textAlign: TextAlign.start),
          RichText(
            text: TextSpan(
                style: TextStyle(color: Colors.black, fontSize: 16),
                children: [
                  TextSpan(
                      text: '⭐ 4.5/5',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(
                      text: '(45 reviews)',
                      style: TextStyle(fontWeight: FontWeight.w200)),
                ]),
          ),
          TextWidget(
              value:
                  'THE NAME SAYS IT ALL, THE RIGHT SIZE SLIGHTLY SNUGS THE BODY LEAVING ENOUGH ROOM FOR COMFORT IN THE SLEEVES AND WAIST.',
              fontSize: 16,
              fontWeight: FontWeight.w200,
              textAlign: TextAlign.start),
          TextWidget(
              value: 'Choose size',
              fontSize: 20,
              fontWeight: FontWeight.w500,
              textAlign: TextAlign.start),
          Row(
            children: ['S', 'M', 'L'].map((e) {
              return Obx(() => InkWell(
                    onTap: () {
                      controller.currentSize.value = e;
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.25),
                          border: Border.all(color: Colors.black),color: controller.currentSize.value == e
                          ? Colors.black
                          : Colors.white,


                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 15.0, bottom: 15, right: 19, left: 19),
                        child: TextWidget(
                          value: e,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          textAlign: TextAlign.start,
                          color: controller.currentSize.value == e
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ),
                  ));
            }).toList(),
          )
        ],
      ),
    );
  }
}
