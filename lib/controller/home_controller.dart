import 'dart:convert';

import 'package:get/get.dart';
import 'package:localstorage/localstorage.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:simplecommerce/entity/product.dart';

class HomeController {
  final LocalStorage storage = new LocalStorage('localstorage_app');
  var mycart;

  HomeController() {
    initializeCart();
  }

  // getPermissions() async{
  //   var res = await Permission.sms
  //       .onDeniedCallback(() {
  //     // Your code
  //   })
  //       .onGrantedCallback(() {
  //     // Your code
  //   })
  //       .onPermanentlyDeniedCallback(() {
  //     // Your code
  //   })
  //       .onRestrictedCallback(() {
  //     // Your code
  //   })
  //       .onLimitedCallback(() {
  //     // Your code
  //   })
  //       .onProvisionalCallback(() {
  //     // Your code
  //   })
  //       .request();
  // }

  Future<void> initializeCart() async {
    await updatemycart();
  }

  Future<void> updatemycart() async {
    bool isStorageReady = await storage.ready;
    if (isStorageReady) {
      final data = await storage.getItem('mycart');

      if (data != null) {
        mycart = data;
      } else {
        mycart = [];
      }
    }
  }

  addToCart(key, newContent) {
    var storageitems = jsonDecode(storage.getItem('mycart')) ?? [];
    print(storageitems);
    var updateditems = [...storageitems, newContent];
    print(updateditems);

    var info = jsonEncode(updateditems);
    print(info);

    storage.setItem(key, info);
  }

  RxString currentSize = 'S'.obs;
  RxInt currentIndex = 0.obs;
  RxInt currentId = 0.obs;
  RxString currentLabel = 'All'.obs;
  List<String> categories = ['All', 'Men', 'Women', 'Kids'];
  List<Map<String, dynamic>> products = [
    {
      'img': './assets/image 1.png',
      'title': 'Regular Fit slogan',
      'price': 'KSH 1,190',
    },
    {
      'img': './assets/image 2.png',
      'title': 'Regular Fit polo',
      'price': 'KSH 1,100'
    },
    {
      'img': './assets/image 3.png',
      'title': 'Regular Fit color Block',
      'price': 'KSH 1,290'
    },
    {
      'img': './assets/image 4.png',
      'title': 'Regular Fit Fit V-neck',
      'price': 'KSH 1,690'
    },
    {
      'img': './assets/image 1.png',
      'title': 'Regular Fit Regular Fit slogan',
      'price': 'KSH 2,190'
    },
    {
      'img': './assets/image 1.png',
      'title': 'Regular Fit polo',
      'price': 'KSH 1,590'
    },
    {
      'img': './assets/image 2.png',
      'title': 'Regular Fit polo',
      'price': 'KSH 1,100'
    },
    {
      'img': './assets/image 3.png',
      'title': 'Regular Fit color Block',
      'price': 'KSH 1,290'
    },
    {
      'img': './assets/image 4.png',
      'title': 'Regular Fit Fit V-neck',
      'price': 'KSH 1,690'
    },
    {
      'img': './assets/image 1.png',
      'title': 'Regular Fit Regular Fit slogan',
      'price': 'KSH 2,190'
    },
    {
      'img': './assets/image 1.png',
      'title': 'Regular Fit polo',
      'price': 'KSH 1,590'
    },
  ];
  RxList myCartList = [].obs;

  updateCartRecords(List<Product> records, int id, var newContent) {
    records.forEach((element) {
      if (element.id == id) {
        element.size.value = newContent;
      }
    });
  }
}
