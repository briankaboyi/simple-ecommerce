import 'package:get/get.dart';

class HomeController {
  RxString currentSize = ''.obs;
  RxInt currentIndex = 0.obs;
  RxString currentLabel = 'All'.obs;
  List<String> categories = ['All', 'Men', 'Women', 'Kids'];
  List<Map<String, dynamic>> products = [
    {'img': './assets/image 1.png', 'title': 'Regular Fit slogan','price': 'KSH 1,190','Size':'S','id':'1'},
    {'img': './assets/image 2.png', 'title': 'Regular Fit polo','price': 'KSH 1,100','Size':'S','id':'2'},
    {'img': './assets/image 3.png', 'title': 'Regular Fit color Block','price': 'KSH 1,290','Size':'S','id':'3'},
    {'img': './assets/image 4.png', 'title': 'Regular Fit Fit V-neck','price': 'KSH 1,690','Size':'S','id':'4'},
    {'img': './assets/image 1.png', 'title': 'Regular Fit Regular Fit slogan','price': 'KSH 2,190','Size':'S','id':'5'},
    {'img': './assets/image 1.png', 'title': 'Regular Fit polo','price': 'KSH 1,590','Size':'S','id':'6'},
    {'img': './assets/image 2.png', 'title': 'Regular Fit polo','price': 'KSH 1,100','Size':'S','id':'7'},
    {'img': './assets/image 3.png', 'title': 'Regular Fit color Block','price': 'KSH 1,290','Size':'S','id':'8'},
    {'img': './assets/image 4.png', 'title': 'Regular Fit Fit V-neck','price': 'KSH 1,690','Size':'S','id':'9'},
    {'img': './assets/image 1.png', 'title': 'Regular Fit Regular Fit slogan','price': 'KSH 2,190','Size':'S','id':'10'},
    {'img': './assets/image 1.png', 'title': 'Regular Fit polo','price': 'KSH 1,590','Size':'S','id':'11'},

  ];
  RxList myCartList = [].obs;

  updateCartRecords(List records,int id, Map<String,dynamic> newContent){
    //check if the record is in the list
    bool isRecordFound= records.where((element) => element['id']==id) as bool;
    if(!isRecordFound){
      records.add(id);
      return;
    }

    records.forEach((element) {
      if(element['id']==id){
        newContent.forEach((key, value) {
          element[key]= value;
        });
      }
    });
  }

  trigger(){
    updateCartRecords(myCartList,04, {
      "size":"M"
    });
  }
}
