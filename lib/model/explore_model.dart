import 'package:appitude_ui/model/images.dart';

class ExploreModel {
  final String topic;
  final List<ExploreMusics> topicMusics;

  ExploreModel({required this.topic, required this.topicMusics});

  static final List<ExploreModel> genratedList = [
    ExploreModel(topic: "TopTalents", topicMusics: [
      ExploreMusics(imagePicture: oxtygen, imagesname: "Oxygen"),
      ExploreMusics(imagePicture: bag, imagesname: "Bag"),
      ExploreMusics(imagePicture: oxygen, imagesname: "Oxygen"),
      ExploreMusics(imagePicture: fireboyApollo, imagesname: "Apollo"),
      ExploreMusics(imagePicture: gucci, imagesname: "Gucci gang"),
      ExploreMusics(imagePicture: apollo, imagesname: "Apollo")
    ]),
    ExploreModel(topic: "Popular", topicMusics: [
      ExploreMusics(imagePicture: fireboyApollo, imagesname: "Apollo"),
      ExploreMusics(imagePicture: gucci, imagesname: "Gucci gang"),
      ExploreMusics(imagePicture: apollo, imagesname: "Apollo"),
      ExploreMusics(imagePicture: oxtygen, imagesname: "Oxygen"),
      ExploreMusics(imagePicture: bag, imagesname: "Bag"),
      ExploreMusics(imagePicture: oxygen, imagesname: "Oxygen"),
    ])
  ];
}

class ExploreMusics {
  final String imagesname;
  final String imagePicture;

  ExploreMusics({required this.imagesname, required this.imagePicture});
}
