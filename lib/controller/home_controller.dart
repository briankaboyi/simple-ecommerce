import 'package:get/get.dart';

class HomeController {
  RxString currentSize = 'S'.obs;
  RxInt currentIndex = 0.obs;
  RxInt currentId = 0.obs;
  RxString currentLabel = 'All'.obs;
  List<String> categories = ['All', 'Men', 'Women', 'Kids'];
  List<Map<String, dynamic>> products = [
    {'img': './assets/image 1.png', 'title': 'Regular Fit slogan','price': 'KSH 1,190',},
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
  RxList myCartList = [].obs;

  updateCartRecords(List records,int id, var newContent){
    //check if the record is in the list
    var edititem =  records.where((element) => element.id==id) ;
    print("lllllllllllllllllllllllllllllllllllllllll$edititem");
    // if(!isRecordFound){
    //   // records.add(id);//??????????
    //   return;
    // }

//records is the main list.
    //element represents the map in the records
    //id is the index of the element in the records

    //the updatecartrecords funtion takes the records, the index of the clicked element, and the newcontent you want to update ,
    //if the maps id is the same as its index in the records then we add the new content to the map. in this case the size with its prefered size.
    //so in this case, the size will be added after the item has already been added to the mycart page and then has to be edited.

    //its not the right approach for me because it adds to the process of buying somenthing from the app.
    //i want to add items to the cart already edited, then it can be changed afterwards.
    records.forEach((element) {
      if(element.id==id){
        element.size= newContent;
      }
    });
  }

  trigger(){
    updateCartRecords(myCartList,04, {
      "size":"M"
    });
  }
}
