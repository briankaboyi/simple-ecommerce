import 'package:get/get.dart';

class HomeController {
  RxInt currentIndex = 0.obs;
  RxString currentLabel = 'All'.obs;
  RxString currentSize = ''.obs;
  List<String> categories = ['All', 'Men', 'Women', 'Kids'];
  List<Map<String, dynamic>> products = [
    {'img': './assets/image 1.png', 'title': 'Regular Fit slogan','price': 'KSH 1,190'},
    {'img': './assets/image 2.png', 'title': 'Regular Fit polo','price': 'KSH 1,100'},
    {'img': './assets/image 3.png', 'title': 'Regular Fit color Block','price': 'KSH 1,290'},
    {'img': './assets/image 4.png', 'title': 'Regular Fit Fit V-neck','price': 'KSH 1,690'},
    {'img': './assets/image 1.png', 'title': 'Regular Fit Regular Fit slogan','price': 'KSH 2,190'},
    {'img': './assets/image 1.png', 'title': 'Regular Fit polo','price': 'KSH 1,590'},
    {'img': './assets/image 2.png', 'title': 'Regular Fit polo','price': 'KSH 1,100'},
    {'img': './assets/image 3.png', 'title': 'Regular Fit color Block','price': 'KSH 1,290'},
    {'img': './assets/image 4.png', 'title': 'Regular Fit Fit V-neck','price': 'KSH 1,690'},
    {'img': './assets/image 1.png', 'title': 'Regular Fit Regular Fit slogan','price': 'KSH 2,190'},
    {'img': './assets/image 1.png', 'title': 'Regular Fit polo','price': 'KSH 1,590'},

  ];
}
