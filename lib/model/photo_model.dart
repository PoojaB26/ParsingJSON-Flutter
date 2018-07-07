class PhotosList {
  final List<Photo> photos;

  PhotosList({
    this.photos,
});

  factory PhotosList.fromJson(List<dynamic> parsedJson) {

    List<Photo> photos = new List<Photo>();
    photos = parsedJson.map((i)=>Photo.fromJson(i)).toList();

    return new PhotosList(
      photos: photos
    );
  }
}

class Photo{
  final String id;
  final String title;
  final String url;

  Photo({
    this.id,
    this.url,
    this.title
}) ;

  factory Photo.fromJson(Map<String, dynamic> json){
    return new Photo(
      id: json['id'].toString(),
      title: json['title'],
      url: json['json'],
    );
  }

}