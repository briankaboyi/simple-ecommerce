import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:simplecommerce/controller/home_controller.dart';
import 'package:simplecommerce/widgets/cart_product_widget.dart';
import 'package:simplecommerce/widgets/cart_widget.dart';
import 'package:simplecommerce/widgets/text_widget.dart';

class MyCartPage extends GetView<HomeController>{
  @override
  Widget build(BuildContext context) {
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
     body: Column(
       children: [
         CartProductWidget()
       ],
     )
     ,
   );
  }

}