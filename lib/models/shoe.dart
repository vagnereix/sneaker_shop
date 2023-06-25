import 'dart:convert';

class Shoe {
  final String name;
  final String price;
  final String imagePath;
  final String decription;

  Shoe(this.name, this.price, this.imagePath, this.decription);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'price': price,
      'imagePath': imagePath,
      'decription': decription,
    };
  }

  factory Shoe.fromMap(Map<String, dynamic> map) {
    return Shoe(
      map['name'] as String,
      map['price'] as String,
      map['imagePath'] as String,
      map['decription'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Shoe.fromJson(String source) =>
      Shoe.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Shoe(name: $name, price: $price, imagePath: $imagePath, decription: $decription)';
  }
}
