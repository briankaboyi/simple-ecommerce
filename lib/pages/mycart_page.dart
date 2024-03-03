import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:simplecommerce/controller/home_controller.dart';
import 'package:simplecommerce/widgets/button_widget.dart';
import 'package:simplecommerce/widgets/cart_product_widget.dart';
import 'package:simplecommerce/widgets/cart_widget.dart';
import 'package:simplecommerce/widgets/text_widget.dart';

class MyCartPage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    // print(controller.myCartList[0]);
    return Scaffold(
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
                value: 'My Cart',
                fontSize: 24,
                fontWeight: FontWeight.bold,
                textAlign: TextAlign.start),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0, top: 30.0),
            child: CartWidget(),
          )
        ],
      ),
      body: controller.myCartList.isEmpty
          ? Center(
              child: TextWidget(
                  value: 'your cart items will appear here',
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                  textAlign: TextAlign.center),
            )
          : Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: Column(
                children: [
                  Container(
                    height: 450,
                    child:ListView.builder(
                      itemCount: controller.myCartList.length,
                      itemBuilder: (context, index) {
                        // var item = controller.myCartList[index]!;
                        var item =
                            controller.myCartList[index].productProperties;
                        var iteme = controller.myCartList[index];

                        var itemId = controller.myCartList[index].id;
                        // Assuming the item has an 'id' field

                        return Padding(
                          padding: const EdgeInsets.only(top: 12.0),
                          child: InkWell(
                            onTap: () {
                              print("opopopopopopopopopopopopop$iteme");
                              showModalBottomSheet(
                                  context: context,
                                  isScrollControlled: true,
                                  constraints: BoxConstraints(
                                    minHeight:
                                    context.mediaQuerySize.height * .8,
                                    maxHeight:
                                    context.mediaQuerySize.height * .8,
                                  ),
                                  builder: (context) {
                                    // return SizedBox(
                                    //   height: 400,
                                    //   child: Column(
                                    //     children: [
                                    //
                                    //       Row(
                                    //         children: ['S', 'M', 'L'].map((e) {
                                    //           return Obx(() => InkWell(
                                    //                 onTap: () {
                                    //                   controller.currentSize
                                    //                       .value = e;
                                    //                 },
                                    //                 child: Padding(
                                    //                   padding:
                                    //                       const EdgeInsets.only(
                                    //                           right: 8.0),
                                    //                   child: Container(
                                    //                     decoration:
                                    //                         BoxDecoration(
                                    //                       borderRadius:
                                    //                           BorderRadius
                                    //                               .circular(
                                    //                                   6.25),
                                    //                       border: Border.all(
                                    //                           color:
                                    //                               Colors.black),
                                    //                       color: controller
                                    //                                   .currentSize
                                    //                                   .value ==
                                    //                               e
                                    //                           ? Colors.black
                                    //                           : Colors.white,
                                    //                     ),
                                    //                     child: Padding(
                                    //                       padding:
                                    //                           const EdgeInsets
                                    //                               .only(
                                    //                               top: 15.0,
                                    //                               bottom: 15,
                                    //                               right: 19,
                                    //                               left: 19),
                                    //                       child: TextWidget(
                                    //                         value: e,
                                    //                         fontSize: 20,
                                    //                         fontWeight:
                                    //                             FontWeight.w500,
                                    //                         textAlign:
                                    //                             TextAlign.start,
                                    //                         color: controller
                                    //                                     .currentSize
                                    //                                     .value ==
                                    //                                 e
                                    //                             ? Colors.white
                                    //                             : Colors.black,
                                    //                       ),
                                    //                     ),
                                    //                   ),
                                    //                 ),
                                    //               ));
                                    //         }).toList(),
                                    //       )
                                    //     ],
                                    //   ),
                                    // );
                                    return Padding(
                                      padding: const EdgeInsets.only(
                                          top: 15.0, left: 15, right: 15),
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            width: Get.width,
                                            child: Image.asset(
                                              item['img'],
                                              width: 300,
                                              height: 300,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 15.0, bottom: 10),
                                            child: TextWidget(
                                                value: item['title'],
                                                fontSize: 24,
                                                fontWeight: FontWeight.bold,
                                                textAlign: TextAlign.start),
                                          ),
                                          RichText(
                                            text: TextSpan(
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 16),
                                                children: [
                                                  TextSpan(
                                                      text: '⭐ 4.5/5',
                                                      style: TextStyle(
                                                          fontWeight:
                                                          FontWeight
                                                              .bold)),
                                                  TextSpan(
                                                      text: '(45 reviews)',
                                                      style: TextStyle(
                                                          fontWeight:
                                                          FontWeight
                                                              .w200)),
                                                ]),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top:40.0),
                                            child: TextWidget(
                                                value: 'Choose size',
                                                fontSize: 20,
                                                fontWeight: FontWeight.w500,
                                                textAlign: TextAlign.start),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 10.0, bottom: 15),
                                            child: Row(
                                              children:
                                              ['S', 'M', 'L'].map((e) {
                                                return Obx(() => InkWell(
                                                  onTap: () {
                                                    controller.currentSize
                                                        .value = e;
                                                  },
                                                  child: Padding(
                                                    padding:
                                                    const EdgeInsets
                                                        .only(
                                                        right: 8.0),
                                                    child: Container(
                                                      decoration:
                                                      BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(
                                                            6.25),
                                                        border: Border.all(
                                                            color: Colors
                                                                .black),
                                                        color: controller
                                                            .currentSize
                                                            .value ==
                                                            e
                                                            ? Colors.black
                                                            : Colors
                                                            .white,
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                        const EdgeInsets
                                                            .only(
                                                            top: 15.0,
                                                            bottom:
                                                            15,
                                                            right: 19,
                                                            left: 19),
                                                        child: TextWidget(
                                                          value: e,
                                                          fontSize: 20,
                                                          fontWeight:
                                                          FontWeight
                                                              .w500,
                                                          textAlign:
                                                          TextAlign
                                                              .start,
                                                          color: controller
                                                              .currentSize
                                                              .value ==
                                                              e
                                                              ? Colors
                                                              .white
                                                              : Colors
                                                              .black,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ));
                                              }).toList(),
                                            ),
                                          ),

                                          InkWell(
                                            onTap: () {

                                              controller.updateCartRecords(controller.myCartList, itemId,  controller.currentSize
                                                  .value );
                                              Navigator.pop(context);
                                            },
                                            child: ButtonWidgets(
                                                text: 'Save',
                                                width: 330,
                                                radius: 10,
                                                color: 0xff000000),
                                          )
                                        ],
                                      ),
                                    );
                                    /////////////////////////////////////
                                  });
                              // print("$itemSize ${iteme}");
                            },
                            child: Container(
                              key: ValueKey(
                                  itemId), // Use the item's ID as the key
                              child: Obx(() => CartProductWidget(
                                img: item['img'],
                                title: item['title'],
                                price: item['price'],
                                size: controller.myCartList[index].size
                              )),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10.0, bottom: 15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextWidget(
                                  value: 'Sub-total',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                  textAlign: TextAlign.center),
                              TextWidget(
                                  value: 'PKR 5,870',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                  textAlign: TextAlign.center),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextWidget(
                                  value: 'VAT (%)',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                  textAlign: TextAlign.center),
                              TextWidget(
                                  value: 'PKR 0.00',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                  textAlign: TextAlign.center),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextWidget(
                                  value: 'Shipping fee',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                  textAlign: TextAlign.center),
                              TextWidget(
                                  value: 'PKR 80',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                  textAlign: TextAlign.center),
                            ],
                          ),
                          Container(
                            width: Get.width,
                            height: 1,
                            color: Colors.black,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextWidget(
                                  value: 'Total',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  textAlign: TextAlign.center),
                              TextWidget(
                                  value: 'PKR 5,950',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  textAlign: TextAlign.center),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 15.0, right: 15, bottom: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {},
              child: ButtonWidgets(
                  text: 'CheckOut', width: 330, radius: 10, color: 0xff000000),
            )
          ],
        ),
      ),
    );
  }
}
