class HomeModel {
  HomeModel({
    required this.message,
    required this.data,
  });
  late final bool message;
  late final HomeData data;

  HomeModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    data = HomeData.fromJson(json['data']);
  }

  HomeModel.noData() {
    message = false;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['message'] = message;
    _data['data'] = data.toJson();
    return _data;
  }
}

class HomeData {
  HomeData({
    required this.topSliders,
    required this.categories,
    required this.lastItems,
  });
  late final List<TopslidersModel> topSliders;
  late final List<CategoriesModel> categories;
  late final List<LastitemsModel> lastItems;

  HomeData.fromJson(Map<String, dynamic> json) {
    topSliders = List.from(json['topsliders'])
        .map((e) => TopslidersModel.fromJson(e))
        .toList();
    categories = List.from(json['categories'])
        .map((e) => CategoriesModel.fromJson(e))
        .toList();
    lastItems = List.from(json['lastitems'])
        .map((e) => LastitemsModel.fromJson(e))
        .toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['topsliders'] = topSliders.map((e) => e.toJson()).toList();
    _data['categories'] = categories.map((e) => e.toJson()).toList();
    _data['lastitems'] = lastItems.map((e) => e.toJson()).toList();
    return _data;
  }
}

class TopslidersModel {
  TopslidersModel({
    required this.id,
    required this.image,
    required this.title,
    required this.url,
    required this.text,
  });
  late final int id;
  late final String image;
  late final String title;
  late final String url;
  String? text;

  TopslidersModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
    title = json['title'];
    url = json['url'];
    text = json['text'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['image'] = image;
    _data['title'] = title;
    _data['url'] = url;
    _data['text'] = text;
    return _data;
  }
}

class CategoriesModel {
  CategoriesModel({
    required this.id,
    required this.name,
    required this.image,
  });
  late final int id;
  late final String name;
  late final String image;

  CategoriesModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['image'] = image;
    return _data;
  }
}

class LastitemsModel {
  LastitemsModel({
    required this.id,
    required this.image,
    required this.title,
    required this.type,
    required this.price,
  });
  late final int id;
  late final Image image;
  late final String title;
  late final String type;
  late final int price;

  LastitemsModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = Image.fromJson(json['image']);
    title = json['title'];
    type = json['type'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['image'] = image.toJson();
    _data['title'] = title;
    _data['type'] = type;
    _data['price'] = price;
    return _data;
  }
}

class Image {
  Image({
    required this.id,
    required this.itemId,
    required this.image,
  });
  late final int id;
  late final int itemId;
  late final String image;

  Image.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    itemId = json['item_id'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['item_id'] = itemId;
    _data['image'] = image;
    return _data;
  }
}
