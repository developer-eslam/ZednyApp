import 'dart:async';

import 'package:zed/data/models/videosmodel/data_video.dart';
import 'package:zed/data/models/videosmodel/video_model.dart';
import 'package:zed/data/networking/responseapi/response.dart';
import 'package:zed/data/repository/videorepository/video_repository.dart';


class VideoBloc {
  VideoRepository _videoRepository;
  StreamController _videostreamController;

  StreamSink<Response<VideosModel>> get resultVideoSink =>
      _videostreamController.sink;
  // Stream<Response<VideosModel>> get _resultVideoStream =>
  //     _videostreamController.stream;

  VideoBloc(DataVideos videoObject) {
    _videostreamController = StreamController<Response<VideosModel>>();
    _videoRepository = VideoRepository();

    fetchVideoBook(videoObject.id);
  }

  fetchVideoBook(int videoId) async {
    resultVideoSink.add(
      Response.loading("Get Video Book"),
    );
    try {
      VideosModel videosModel = await _videoRepository.fetchVideoModel(videoId);
      resultVideoSink.add(
        Response.completed(videosModel),
      );
    } catch (error) {
      resultVideoSink.add(
        Response.error(error.toString()),
      );
    }
  }
  dispose() {
    _videostreamController.close();
  }
} 
