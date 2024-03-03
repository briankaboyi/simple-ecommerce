import 'package:get/get.dart';

class Product {
  Map<String, dynamic> productProperties;
  RxString size = 'S'.obs ;
  int id;
  Product(this.productProperties, this.size,this.id);
  @override
  String toString() {
    return 'Product{productProperties: $productProperties, size: $size, id: $id}';
  }
}
