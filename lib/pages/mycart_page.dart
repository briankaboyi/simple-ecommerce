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
          : Column(
            children: [
              Container(
                height: 500,
                child: ListView.builder(
                        itemCount: controller.myCartList.length,
                        itemBuilder: (context, index) {
                var item = controller.myCartList[index]!;
                var itemId = item['id']; // Assuming the item has an 'id' field

                return Container(
                  key: ValueKey(itemId), // Use the item's ID as the key
                  child: CartProductWidget(
                    img: item['img'],
                    title: item['title'],
                    price: item['price'],
                    size: item['Size'] ?? '',
                  ),
                );
                        },
                      ),
              ),
            ],
          ),
      bottomNavigationBar: Container(
        height: 90,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Row(
                children: [
                  TextWidget(
                      value: 'Sub-total',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      textAlign: TextAlign.center),
                  TextWidget(
                      value: 'PKR 5,870',
                      fontSize:16,
                      fontWeight: FontWeight.bold,
                      textAlign: TextAlign.center),
                ],
              ),  Row(
                children: [
                  TextWidget(
                      value: 'VAT (%)',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      textAlign: TextAlign.center),
                  TextWidget(
                      value: 'PKR 0.00',
                      fontSize:16,
                      fontWeight: FontWeight.bold,
                      textAlign: TextAlign.center),
                ],
              ),  Row(
                children: [
                  TextWidget(
                      value: 'Shipping fee',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      textAlign: TextAlign.center),
                  TextWidget(
                      value: 'PKR 80',
                      fontSize:16,
                      fontWeight: FontWeight.bold,
                      textAlign: TextAlign.center),
                ],
              ),  Row(
                children: [
                  TextWidget(
                      value: 'Total',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      textAlign: TextAlign.center),
                  TextWidget(
                      value: 'PKR 5,950',
                      fontSize:16,
                      fontWeight: FontWeight.bold,
                      textAlign: TextAlign.center),
                ],
              ),



              InkWell(
                onTap: (){

                },
                child: ButtonWidgets(
                    text:'CheckOut',
                    width: Get.width,
                    radius: 10,
                    color: 0xff000000),
              )
            ],
          ),
        ),
      ),
    );
  }
}
