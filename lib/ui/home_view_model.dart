import 'dart:async';

import 'package:photo_video_searching_app/data/pixarbay_api.dart';
import 'package:photo_video_searching_app/model/photo_model.dart';

class HomeViewModel {
  final PixabayApi api;
  final _photoStreamController = StreamController<List<Photo>>()..add([]);
  Stream<List<Photo>> get photoStream => _photoStreamController.stream;

  HomeViewModel(this.api);

  Future<void> fetch(String query) async {
    final result = await api.fetch(query);
    _photoStreamController.add(result);
  }
}