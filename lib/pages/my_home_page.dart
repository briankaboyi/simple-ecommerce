import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:simplecommerce/controller/home_controller.dart';
import 'package:simplecommerce/widgets/text_widget.dart';

class MyHomePage extends GetView<HomeController> {
  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: TextWidget(
              value: 'Discover',
              fontSize: 32,
              fontWeight: FontWeight.bold,
              textAlign: TextAlign.start),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0, top: 30.0),
            child: SvgPicture.asset('assets/Group 3.svg'),
          )
        ],
        bottom: PreferredSize(
            preferredSize: Size(300, 180),
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xfff2f2f2)),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(14.0),
                              child: SvgPicture.asset('assets/search-lg.svg',
                                  height: 18),
                            ),
                            Container(
                              width: 220,
                              child: TextField(
                                controller: _searchController,
                                decoration: InputDecoration(
                                    labelText: 'Search Anything',
                                    labelStyle: TextStyle(fontSize: 16),
                                    enabledBorder: InputBorder.none,
                                  focusedBorder:InputBorder.none,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xff000000)),
                        child: Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: SvgPicture.asset('assets/filter-lines.svg'),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: controller.categories.map((e) {
                      return Obx(() => Padding(
                        padding: const EdgeInsets.only(top: 25.0),
                        child: InkWell(
                            onTap: (){
                              controller.currentLabel.value = e;
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: controller.currentLabel.value == e ? Color(0xff000000):Color(0xfff2f2f2)),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 8.0,bottom: 8.0,left: 13, right:13),
                                child: TextWidget(
                                    color: controller.currentLabel.value == e ? Color(0xffffffff) : Color(0xff000000) ,
                                    value: e,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    textAlign: TextAlign.start),
                              ),
                            )),
                      ));
                    }).toList(),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
