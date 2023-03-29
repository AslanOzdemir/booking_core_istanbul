class Facility {
  final String name;
  final String capacity;
  final List photos;

  Facility({
    required this.name,
    required this.capacity,
    required this.photos,
  });
  factory Facility.fromJson(Map<String, dynamic> item) {
    return Facility(
      name: item["name"],
      capacity: item["capacity"],
      photos: item["photos"] as List,
    );
  }
}
