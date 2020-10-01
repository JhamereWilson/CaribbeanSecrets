import 'package:flutter/material.dart';

class EpisodeModel extends ChangeNotifier {
  final int id;
  final String title;
  final String description;
  final String videoUrl;

  EpisodeModel({
    @required this.videoUrl,
    @required this.id,
    @required this.title,
    @required this.description,
  });
}
