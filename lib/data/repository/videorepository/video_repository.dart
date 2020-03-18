


import 'package:zed/data/models/videosmodel/result_video.dart';
import 'package:zed/data/models/videosmodel/video_model.dart';
import 'package:zed/data/networking/apiprovider/api_provider.dart';

class VideoRepository {
  ApiProvider apiProvider = ApiProvider();

  Future<List<ResultVideos>> fetchResultVideos(int videoId) async {
    final response = await apiProvider.getDataModel("show_videos/$videoId");
    return VideosModel.fromJson(response).results;
  }


  Future<VideosModel> fetchVideoModel(int videoId) async {
    final response = await apiProvider.getDataModel("show_articles/$videoId");
    return VideosModel.fromJson(response);
  }
  

  
}