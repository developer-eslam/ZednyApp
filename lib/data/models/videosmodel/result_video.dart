
import 'package:zed/data/models/videosmodel/video_model.dart';

class ResultVideos {

    VideosModel videos;
    
    ResultVideos({
        this.videos,
    });

    factory ResultVideos.fromJson(Map<String, dynamic> json) => ResultVideos(
        videos: VideosModel.fromJson(json["videos"]),
    );

    Map<String, dynamic> toJson() => {
        "videos": videos.toJson(),
    };
}
 
