import 'package:caribbean_secrets_ecommerce/models/episode_model.dart';
import 'package:flutter/material.dart';

class Episodes with ChangeNotifier {
  List<EpisodeModel> _episodes = [
    EpisodeModel(
        videoUrl: "https://www.youtube.com/embed/7y_wAMxihog",
        coverImageUrl: "images/CSwebsite-1.jpg",
        id: 1,
        title: "How to Use Haitian Castor Oil Part 1",
        description: "Welcome to Caribbean Secrets!"),
    EpisodeModel(
      videoUrl: "https://www.youtube.com/embed/ZYyYR6kyP28",
      id: 2,
      title: "How to Use Haitian Castor Oil Part 2",
      description: "Haitian Castor Oil",
      coverImageUrl: "images/CSwebsite-16.jpg",
    ),
    EpisodeModel(
      videoUrl: "https://www.youtube.com/embed/9oG9NUHhUqc",
      id: 3,
      title: "How to Use Haitian Castor Oil Part 3",
      description: "Perfect Night Routine",
      coverImageUrl: "images/CSwebsite-14.jpg",
    ),
    EpisodeModel(
      videoUrl: "https://www.youtube.com/embed/i-nmAAUBquw",
      id: 4,
      title: "How to Use Haitian Castor Oil Part 4",
      description: "The Comparison",
      coverImageUrl: "images/CSwebsite-21.jpg",
    ),
  ];

  EpisodeModel findById(int id) {
    return _episodes.firstWhere((episode) => episode.id == id);
  }

  List<EpisodeModel> get episodes {
    return [..._episodes];
  }
}
