class Address {
  final String city;
  final List<String> streets;

  Address({
    this.city,
    this.streets
});

  factory Address.fromJson(Map<String, dynamic> parsedJson) {

    //List<Map> list = json.decode(jsonString).cast<Map>();
// or
//List<Map> list = jsonDecode(jsonString).cast<Map>();

    var streets = parsedJson['streets'];

    print(streets is List);

    List<String> streetsList = new List<String>();
    for (var o in streets) {
      print(o);
      streetsList.add(o);
    }

   /* List<String> streets = parsedJson['streets'];
    print(streets.length);
    print(streets.runtimeType);*/
   /* var datas = new List<Data>();
    list.forEach((Map map) {
      datas.add(new Data.fromMap(map));
    });﻿


    //List<String> result = toJson.map((item) => new List<String>(item)).toList();
    final streets = new List<String>(toJson['streets']);*/
   /* List<String> streets = List<String>(toJson['streets']).toList();
    print(streets[0]);
  //  final streets = toJson['streets'].map((i)=>(i)).toList();
*/
    return new Address(
        city: parsedJson['city'],
        streets: streetsList,
    );
  }}
