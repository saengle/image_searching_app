import 'package:flutter/material.dart';
import 'package:photo_video_searching_app/data/photo_provider.dart';
import 'package:photo_video_searching_app/data/pixarbay_api.dart';
import 'package:photo_video_searching_app/ui/home_screen.dart';
import 'package:photo_video_searching_app/ui/home_view_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PhotoProvider(viewModel: HomeViewModel(PixabayApi()),
      child: const HomeScreen()),
    );
  }
}
