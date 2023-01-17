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
  static final List<Item> items = [
    Item(
        id: 1,
        name: "iPhone 12 pro",
        description: "Apple iphone 12th generation",
        price: 500,
        color: "#33505a",
        imageUrl:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRISJ6msIu4AU9_M9ZnJVQVFmfuhfyJjEtbUm3ZK11_8IV9TV25-1uM5wHjiFNwKy99w0mR5Hk&usqp=CAc")
  ];
}

class Item {
  late final int id;
  late final String name;
  late final String description;
  late final num price;
  late final String color;
  late final String imageUrl;
  Item({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.color,
    required this.imageUrl,
  });

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
        id: map["id"],
        name: map["name"],
        description: map["description"],
        price: map["price"],
        color: map["color"],
        imageUrl: map["imageUrl"]);
  }

  toMap() => {
        "id": id,
        "name": name,
        "description": description,
        "price": price,
        "color": color,
        "imageUrl": imageUrl,
      };
}
