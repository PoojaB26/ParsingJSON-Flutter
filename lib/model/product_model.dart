class Product {
  final int id;
  final String name;
  final List<Image> images;

  Product({this.id, this.name, this.images});

  factory Product.fromJson(Map<String, dynamic> parsedJson){

    var list = parsedJson['images'] as List;
    print(list.runtimeType);
    List<Image> imagesList = list.map((i) => Image.fromJson(i)).toList();


    return Product(
      id: parsedJson['id'],
      name: parsedJson['name'],
      images: imagesList

    );
  }
}

class Image {
  final int imageId;
  final String imageName;

  Image({this.imageId, this.imageName});

  factory Image.fromJson(Map<String, dynamic> parsedJson){
   return Image(
     imageId:parsedJson['id'],
     imageName:parsedJson['imageName']
   );
  }
}