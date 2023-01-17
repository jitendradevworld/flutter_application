// ignore_for_file: public_member_api_docs, sort_constructors_first
// class Item {
//   final String id = "";
//   final String name = "";
//   final String description = "";
//   final num price = 0;
//   final String color = "";
//   final String imageUrl = "";
// }
class CatalogModel {
  static List<Item>? items;
}

class Item {
  late final int id;
  late final String name;
  late final String desc;
  late final num price;
  late final String color;
  late final String image;
  Item({
    required this.id,
    required this.name,
    required this.desc,
    required this.price,
    required this.color,
    required this.image,
  });
  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
        id: map["id"],
        name: map["name"],
        desc: map["desc"],
        price: map["price"],
        color: map["color"],
        image: map["image"]);
  }

  toMap() => {
        "id": id,
        "name": name,
        "desc": desc,
        "price": price,
        "color": color,
        "image": image,
      };
}


/*
factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
        id: map["id"],
        name: map["name"],
        desc: map["desc"],
        price: map["price"],
        color: map["color"],
        image: map["image"]);
  }

  toMap() => {
        "id": id,
        "name": name,
        "desc": desc,
        "price": price,
        "color": color,
        "image": image,
      };
*/