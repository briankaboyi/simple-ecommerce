import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:simplecommerce/controller/home_controller.dart';
import 'package:simplecommerce/widgets/button_widget.dart';
import 'package:simplecommerce/widgets/text_widget.dart';

class ProductPage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    var currentIndex = controller.currentIndex;
    var currentItem = controller.products[currentIndex];
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
      body: Padding(
        padding: const EdgeInsets.only(top: 15.0,left: 15,right: 15),
        child: SingleChildScrollView(scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: Get.width,
                child: Image.asset(
                  currentItem['img'],
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:15.0,bottom: 10),
                child: TextWidget(
                    value: currentItem['title'],
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    textAlign: TextAlign.start),
              ),
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
              Padding(
                padding: const EdgeInsets.only(top: 15.0,bottom: 15.0),
                child: TextWidget(
                    value:
                        'The Name Says It All, the Right Size Slightly Snugs the Body Leaving Enough Room for Comfort in the Sleeves and Waist.',
                    fontSize: 16,
                    fontWeight: FontWeight.w200,
                    textAlign: TextAlign.start),
              ),
              TextWidget(
                  value: 'Choose size',
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  textAlign: TextAlign.start),
              Padding(
                padding: const EdgeInsets.only(top:10.0,bottom: 15),
                child: Row(
                  children: ['S', 'M', 'L'].map((e) {
                    return Obx(() => InkWell(
                          onTap: () {
                            controller.currentSize.value = e;
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6.25),
                              border: Border.all(color: Colors.black),
                              color: controller.currentSize.value == e
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
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 90,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidget(
                    value: 'Price',
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    textAlign: TextAlign.start,
                    color: Colors.black,
                  ),
                  TextWidget(
                    value: 'PKR 1,190',
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                    textAlign: TextAlign.start,
                    color: Colors.black,
                  )
                ],
              ),
              ButtonWidgets(
                  text:'Add to cart',
                  width: 160,
                  radius: 10,
                  color: 0xff000000)
            ],
          ),
        ),
      ),
    );
  }
}
