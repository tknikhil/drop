class Item2{
  late List<String> items;

  Item2({required this.items});

  factory Item2.fromJson(Map<String, dynamic> json) {
    return Item2(
      items: List<String>.from(json['items']),
    );
  }
}