class Flowers {
  final int id;
  final String title;
  final String description;
  final String imageUrl;
  final String cost;
  final String article;

  Flowers(this.id, this.title, this.description, this.imageUrl, this.cost, this.article);

  factory Flowers.fromJson(Map<String, dynamic> json) {
    return Flowers(
      json['id'],
      json['title'],
      json['description'],
      json['imageUrl'],
      json['cost'],
      json['article'],
    );
  }
}
