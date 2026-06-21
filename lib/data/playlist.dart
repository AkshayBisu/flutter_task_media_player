import '../models/media_item._model.dart';

const Map<String, dynamic> playlistJson = {
  "result": [
    {
      "type": "image",
      "url":
          "https://images.pexels.com/photos/32417863/pexels-photo-32417863.jpeg",
    },
    {"type": "video", "url": "https://samplelib.com/mp4/sample-5s-360p.mp4"},
    {"type": "video", "url": "https://samplelib.com/mp4/sample-10s-360p.mp4"},
    {
      "type": "image",
      "url":
          "https://images.pexels.com/photos/34213341/pexels-photo-34213341.jpeg",
    },
    {"type": "video", "url": "https://samplelib.com/mp4/sample-20s-360p.mp4"},
  ],
};

List<MediaItem> loadPlaylist() {
  final items = playlistJson['result'] as List<dynamic>;
  return items
      .map((e) => MediaItem.fromJson(e as Map<String, dynamic>))
      .toList();
}
