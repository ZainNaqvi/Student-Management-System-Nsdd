class Program {
  final int id;
  final String title;
  final String imageUrl;

  Program({
    required this.id,
    required this.title,
    required this.imageUrl,
  });
  factory Program.fromJson(Map<String, dynamic> json) => Program(
        id: json['id'],
        title: json['name'],
        imageUrl: json['image_url'],
      );
}
