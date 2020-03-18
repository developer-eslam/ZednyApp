
class DescriptionVideo {
    String en;
    String ar;

    DescriptionVideo({
        this.en,
        this.ar,
    });

    factory DescriptionVideo.fromJson(Map<String, dynamic> json) => DescriptionVideo(
        en: json["en"],
        ar: json["ar"],
    );

    Map<String, dynamic> toJson() => {
        "en": en,
        "ar": ar,
    };
}
