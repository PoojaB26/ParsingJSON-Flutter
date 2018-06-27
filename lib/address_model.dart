class Address {
  final String city;
  final List<String> streets;

  Address({
    this.city,
    this.streets
});

  factory Address.fromJson(Map<String, dynamic> parsedJson) {
    var streets = parsedJson['streets'];
    List<String> streetsList = new List<String>.from(streets);
    return new Address(
        city: parsedJson['city'],
        streets: streetsList,
    );
  }}
