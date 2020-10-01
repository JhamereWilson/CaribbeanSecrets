import 'package:caribbean_secrets_ecommerce/models/episode_model.dart';
import 'package:flutter/material.dart';

class Episodes with ChangeNotifier {
  List<EpisodeModel> _episodes = [
    EpisodeModel(
        videoUrl: "/loyal.MP4",
        id: 1,
        title: "Episode 1",
        description: "Caribbean Secrets Ambassador Shoot"),
    EpisodeModel(
        videoUrl: "/haitian_castor_oil_doc.mov",
        id: 2,
        title: "Episode 2",
        description: "Haitian Castor Oil Documentary"),
    EpisodeModel(
        videoUrl: "/the_brothers.mov",
        id: 3,
        title: "Episode 3",
        description: "The Brothers"),
  ];


  List<EpisodeModel> get episodes {
    return [..._episodes];
  }
}
