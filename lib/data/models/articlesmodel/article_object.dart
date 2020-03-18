import 'description_article.dart';

class Article {
  int id;
  DescriptionArticle name;
  dynamic slug;
  DescriptionArticle description;
  dynamic image;
  DateTime createdAt;
  DateTime updatedAt;

  Article({
    this.id,
    this.name,
    this.slug,
    this.description,
    this.image,
    this.createdAt,
    this.updatedAt,
  });

  factory Article.fromJson(Map<String, dynamic> json) => Article(
        id: json["id"],
        name: DescriptionArticle.fromJson(json["name"]),
        slug: json["slug"],
        description: DescriptionArticle.fromJson(json["description"]),
        image: json["image"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name.toJson(),
        "slug": slug,
        "description": description.toJson(),
        "image": image,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}
