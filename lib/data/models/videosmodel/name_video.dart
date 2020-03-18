
class NameVideo {
    String en;
    String ar;

    NameVideo({
        this.en,
        this.ar,
    });

    factory NameVideo.fromJson(Map<String, dynamic> json) => NameVideo(
        en: json["en"],
        ar: json["ar"],
    );

    Map<String, dynamic> toJson() => {
        "en": en,
        "ar": ar,
    };
}
