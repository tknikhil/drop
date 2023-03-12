class Item{
  late final int id;
  late final String name;

  Item({required this.id,required this.name});

  factory Item.fromJson(Map<String,dynamic> json){
    return Item(id:json['id'], name:json['name']);
  }
}