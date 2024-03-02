import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simplecommerce/widgets/text_widget.dart';

class CartProductWidget extends GetView {
  final String img;
  final String title;
  final String price;
  final String size;

  CartProductWidget({super.key, required this.img, required this.title, required this.price, required this.size});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 126,
      width: Get.width,
      decoration: BoxDecoration(
        color: Color(0xfff2f2f2),
        borderRadius: BorderRadius.circular(10),

      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(

              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                img,
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 3.0,bottom: 3,right: 10,left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                        text: TextSpan(
                            style:GoogleFonts.poppins(
                              textStyle:
                                  TextStyle(color: Colors.black,))
                               ,
                            children: [
                          TextSpan(
                              text: '$title\n',
                              style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold)),
                              WidgetSpan(
                                child: SizedBox(height: 28), // Add spacing here
                              ),
                          TextSpan(text: size, style: TextStyle(fontSize: 12,fontWeight: FontWeight.w200))
                        ])),
                    TextWidget(
                        value: price,
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        textAlign: TextAlign.start)
                  ],
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                Align(alignment: Alignment.topCenter,child: SvgPicture.asset('assets/deleteicon.svg', height: 18)),
                ClipRRect(borderRadius: BorderRadius.circular(10),child: Container(width: 45,height: 20,color: Colors.black,))
              ],
            )
          ],
        ),
      ),
    );
  }
}
