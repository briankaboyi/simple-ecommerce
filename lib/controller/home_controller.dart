import 'package:get/get.dart';

class HomeController {
  RxString currentLabel = 'All'.obs;
  List<String> categories = ['All', 'Men', 'Women', 'Kids'];
  List<Map<String, dynamic>> products = [
    {'img': './assets/Frame 9.png', 'title': 'Regular Fit slogan','price': 'KSH 1,190'},
    {'img': './assets/Frame 10.png', 'title': 'Regular Fit polo','price': 'KSH 1,100'},
    {'img': './assets/Frame 11.png', 'title': 'Regular Fit color Block','price': 'KSH 1,290'},
    {'img': './assets/Frame 12.png', 'title': 'Regular Fit Fit V-neck','price': 'KSH 1,690'},
    {'img': './assets/Frame 13.png', 'title': 'Regular Fit Regular Fit slogan','price': 'KSH 2,190'},
    {'img': './assets/Frame 14.png', 'title': 'Regular Fit polo','price': 'KSH 1,590'},

  ];
}
