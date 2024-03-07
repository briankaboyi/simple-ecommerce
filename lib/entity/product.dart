import 'package:get/get.dart';

class Product {
  Map<String, dynamic> productProperties;
  RxString size = 'S'.obs;
  int id;

  Product(this.productProperties, this.size, this.id);

  // Deserialize from JSON
  Product.fromJson(Map<String, dynamic> json)
      : productProperties = json['productProperties'],
        size = json['size'] != null ? RxString(json['size']) : 'S'.obs,
        id = json['id'];

  // Serialize to JSON
  Map<String, dynamic> toJson() => {
    'productProperties': productProperties,
    'size': size.value, // Convert RxString to String
    'id': id,
  };

  @override
  String toString() {
    return 'Product{productProperties: $productProperties, size: $size, id: $id}';
  }
}