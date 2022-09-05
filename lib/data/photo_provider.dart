import 'package:flutter/material.dart';
import 'package:photo_video_searching_app/data/pixarbay_api.dart';

class PhotoProvider extends InheritedWidget {
  final PixabayApi api;

  const PhotoProvider({
    Key? key,
    required this.api,
    required super.child,
  }) : super(key: key);

  static PhotoProvider of(BuildContext context) {
    final PhotoProvider? result =
        context.dependOnInheritedWidgetOfExactType<PhotoProvider>();
    assert(result != null, 'No PixabayApi found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(PhotoProvider oldWidget) {
    return oldWidget.api != api;
  }
}
