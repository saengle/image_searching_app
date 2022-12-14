import 'package:flutter/material.dart';
import 'package:photo_video_searching_app/data/pixarbay_api.dart';
import 'package:photo_video_searching_app/model/photo_model.dart';

class PhotoWidget extends StatelessWidget {
  final Photo photo;

  const PhotoWidget({
    Key? key,
    required this.photo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(16.0)),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage('${photo.previewURL}'),
          )),
    );
  }
}
