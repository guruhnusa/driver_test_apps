// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:driver_test_apps/core/components/custom_scaffold.dart';
import 'package:driver_test_apps/data/models/response/tutorial_video_response_model.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class DetailVideoPage extends StatefulWidget {
  final Video data;
  const DetailVideoPage({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  State<DetailVideoPage> createState() => _DetailVideoPageState();
}

class _DetailVideoPageState extends State<DetailVideoPage> {
  late YoutubePlayerController youtubePlayerController;

  @override
  void initState() {
    final intialVideoId = YoutubePlayer.convertUrlToId(widget.data.videoUrl);
    youtubePlayerController = YoutubePlayerController(
      initialVideoId: "$intialVideoId",
      flags: const YoutubePlayerFlags(autoPlay: true, mute: false),
    );
    super.initState();
  }

  @override
  void dispose() {
    youtubePlayerController.pause();
    youtubePlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        appBarTitle: const Text("Video"),
        body: ListView(
          padding: const EdgeInsets.all(24),
          children: [
            YoutubePlayer(
              controller: youtubePlayerController,
              showVideoProgressIndicator: true,
              progressIndicatorColor: Colors.amber,
              progressColors: const ProgressBarColors(
                playedColor: Colors.amber,
                handleColor: Colors.amberAccent,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              widget.data.title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              widget.data.description,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ));
  }
}
