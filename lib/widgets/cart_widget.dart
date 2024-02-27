import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:simplecommerce/controller/home_controller.dart';
import 'package:simplecommerce/pages/mycart_page.dart';

class CartWidget extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      onTap: (){
        Get.to(MyCartPage());
      },
      child: Stack(
        alignment: AlignmentDirectional.topEnd,
        children: [
          SvgPicture.asset(
            'assets/shopicon.svg',
            height: 25,
            color: Colors.black,
          ),
          Transform.translate(
            offset: Offset(2, -7),
            child: Container(
              height: 18,
              width: 18,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Center(
                  child: Text(
                '2',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
