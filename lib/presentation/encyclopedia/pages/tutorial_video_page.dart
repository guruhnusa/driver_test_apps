import 'package:driver_test_apps/core/components/custom_scaffold.dart';
import 'package:driver_test_apps/core/extensions/build_context_ext.dart';
import 'package:driver_test_apps/presentation/encyclopedia/bloc/get_video/get_video_bloc.dart';
import 'package:driver_test_apps/presentation/encyclopedia/pages/detail_video_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class TutorialVideoPage extends StatefulWidget {
  const TutorialVideoPage({super.key});

  @override
  State<TutorialVideoPage> createState() => _TutorialVideoPageState();
}

class _TutorialVideoPageState extends State<TutorialVideoPage> {
  @override
  void initState() {
    context.read<GetVideoBloc>().add(
          const GetVideoEvent.getVideo(),
        );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBarTitle: const Text("Tutorial Video"),
      body: BlocBuilder<GetVideoBloc, GetVideoState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () {
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
            loading: () {
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
            success: (data) {
              return ListView.separated(
                  padding: const EdgeInsets.all(24),
                  itemBuilder: (context, index) {
                    final video = data.videos[index];
                    return Card(
                      child: ListTile(
                        contentPadding: const EdgeInsets.all(16),
                        title: Text(video.title,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            )),
                        leading: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://img.youtube.com/vi/${YoutubePlayer.convertUrlToId(video.videoUrl)}/0.jpg",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        onTap: () {
                          context.push(
                            DetailVideoPage(data: data.videos[index]),
                          );
                        },
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      height: 20,
                    );
                  },
                  itemCount: data.videos.length);
            },
          );
        },
      ),
    );
  }
}
