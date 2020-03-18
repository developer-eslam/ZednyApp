class DescriptionArticle {
  String en;

  DescriptionArticle({
    this.en,
  });

  factory DescriptionArticle.fromJson(Map<String, dynamic> json) =>
      DescriptionArticle(
        en: json["en"],
      );

  Map<String, dynamic> toJson() => {
        "en": en,
      };
}
