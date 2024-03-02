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
            padding: const EdgeInsets.only(left: 10.0,right: 10),
            child: Column(
                children: [
                  Container(
                    height: 450,

                    child: ListView.builder(
                      itemCount: controller.myCartList.length,
                      itemBuilder: (context, index) {
                        var item = controller.myCartList[index]!;
                        var itemId =
                            item['id']; // Assuming the item has an 'id' field

                        return Padding(
                          padding: const EdgeInsets.only(top:12.0),
                          child: Container(
                            key: ValueKey(itemId), // Use the item's ID as the key
                            child: CartProductWidget(
                              img: item['img'],
                              title: item['title'],
                              price: item['price'],
                              size: item['Size'] ?? '',
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top:10.0,bottom: 15),
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
      bottomNavigationBar:
         Padding(
           padding: const EdgeInsets.only(left: 15.0,right: 15,bottom: 15),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {},
                child: ButtonWidgets(
                    text: 'CheckOut',
                    width:330,
                    radius: 10,
                    color: 0xff000000),
              )
            ],
                   ),
         ),

    );
  }
}
