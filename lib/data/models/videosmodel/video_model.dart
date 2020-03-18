
import 'package:zed/data/models/videosmodel/result_video.dart';

class VideosModel{
    List<ResultVideos> results;

  VideosModel({
    this.results,
  });

  factory VideosModel.fromJson(Map<String, dynamic> json) => VideosModel(
        results: List<ResultVideos>.from(
            json["results"].map((x) => ResultVideos.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "results": List<dynamic>.from(results.map((x) => x.toJson())),
      };
}



