
import 'description_video.dart';

class DataVideos {
    int id;
    DescriptionVideo name;
    dynamic slug;
    DescriptionVideo description;
    String image;
    String coverImage;
    String video;
    String promoVideo;
    String author;
    dynamic aboutAuthor;
    dynamic featured;
    int views;
    int categoryId;
    DateTime createdAt;
    DateTime updatedAt;

    DataVideos({
        this.id,
        this.name,
        this.slug,
        this.description,
        this.image,
        this.coverImage,
        this.video,
        this.promoVideo,
        this.author,
        this.aboutAuthor,
        this.featured,
        this.views,
        this.categoryId,
        this.createdAt,
        this.updatedAt,
    });

    factory DataVideos.fromJson(Map<String, dynamic> json) => DataVideos(
        id: json["id"],
        name: DescriptionVideo.fromJson(json["name"]),
        slug: json["slug"],
        description: DescriptionVideo.fromJson(json["description"]),
        image: json["image"],
        coverImage: json["cover_image"],
        video: json["video"],
        promoVideo: json["promo_video"],
        author: json["author"],
        aboutAuthor: json["about_author"],
        featured: json["featured"],
        views: json["views"],
        categoryId: json["category_id"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name.toJson(),
        "slug": slug,
        "description": description.toJson(),
        "image": image,
        "cover_image": coverImage,
        "video": video,
        "promo_video": promoVideo,
        "author": author,
        "about_author": aboutAuthor,
        "featured": featured,
        "views": views,
        "category_id": categoryId,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
    };
}
