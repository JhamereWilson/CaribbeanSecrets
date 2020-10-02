import 'package:caribbean_secrets_ecommerce/models/episode_model.dart';
import 'package:flutter/material.dart';

class Episodes with ChangeNotifier {
  List<EpisodeModel> _episodes = [
    EpisodeModel(
        videoUrl:
            """<iframe width="560" height="315" src="https://www.youtube.com/embed/7y_wAMxihog" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>""",
        coverImageUrl: "images/CSwebsite-1.jpg",
        id: 1,
        title: "How to Use Haitian Castor Oil Part 1",
        description: "Welcome to Caribbean Secrets!"),
    EpisodeModel(
      videoUrl:
         "https://www.youtube.com/embed/ZYyYR6kyP28",
      id: 2,
      title: "How to Use Haitian Castor Oil Part 2",
      description: "Haitian Castor Oil",
      coverImageUrl: "images/CSwebsite-16.jpg",
    ),
    EpisodeModel(
      videoUrl:
          """<iframe width="560" height="315" src="https://www.youtube.com/embed/9oG9NUHhUqc" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>""",
      id: 3,
      title: "How to Use Haitian Castor Oil Part 3",
      description: "Perfect Night Routine",
      coverImageUrl: "images/CSwebsite-14.jpg",
    ),
    EpisodeModel(
      videoUrl:
          """<iframe width="560" height="315" src="https://www.youtube.com/embed/i-nmAAUBquw" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>""",
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
