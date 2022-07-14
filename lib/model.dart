class Blog {
  final String name;
  final String id;
  final String country_of_origin;

  const Blog({
    required this.name,
    required this.id,
    required this.country_of_origin,
  });

  factory Blog.fromJson(Map<String, dynamic> json) {
    return Blog(
      name: json['name'],
      id: json['id'],
      country_of_origin: json['country_of_origin'],
    );
  }
}
