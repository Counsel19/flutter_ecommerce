class Category {
  final String id;
  final String name;
  final String imageUrl;

  Category({required this.imageUrl, required this.id, required this.name});

  factory Category.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {
        "id": String id,
        "name": String name,
        "imageUrl": String imageUrl,
      } =>
        Category(imageUrl: imageUrl, id: id, name: name),
      _ => throw const FormatException("Failed to Create Category")
    };
  }
}
