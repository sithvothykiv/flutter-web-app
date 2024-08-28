import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:infinity_web_app/src/app_color.dart';
import 'package:video_player/video_player.dart';
import 'package:visibility_detector/visibility_detector.dart';

class PageHeaderVideo extends StatefulWidget {
  PageHeaderVideo({Key? key}) : super(key: key);

  @override
  _PageHeaderVideoState createState() => _PageHeaderVideoState();
}

class _PageHeaderVideoState extends State<PageHeaderVideo> {
  final VideoPlayerController videoPlayerController = VideoPlayerController.asset('assets/videos/infinity_video.mp4');
  bool? isSetVolumeToZero = true;
  bool? isMusicOnOff = true;

  late FlickManager flickManager;

  @override
  void initState() {
    _initVideoController();
    super.initState();
    flickManager = FlickManager(videoPlayerController: videoPlayerController, autoPlay: true);
  }

  @override
  void dispose() {
    videoPlayerController.dispose();
    flickManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return /*FutureBuilder(
      future: _initializeVideoPlayerFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          // If the VideoPlayerController has finished initialization, use
          // the data it provides to limit the aspect ratio of the video.
          return AspectRatio(
            aspectRatio: videoPlayerController.value.aspectRatio,
            child: Stack(
              children: [
                VideoPlayer(videoPlayerController),
                Positioned(
                  bottom: 30,
                  right: 0,
                  child: ElevatedButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.volume_up, color: InfinityColor.darkBlueColor),
                        Text(
                          isMusicOnOff! ? "Music On" : "Music Off",
                          style: TextStyle(color: InfinityColor.darkBlueColor),
                        ),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: InfinityColor.primaryDarkBackgroundColor,
                      fixedSize: Size(130, 50),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                    ),
                    onPressed: () {
                      _setMusicOnOffSound(isMusicOnOff!);
                      isMusicOnOff = !isMusicOnOff!;
                      setState(() {});
                    },
                  ),
                ),
              ],
            ),
          );
        } else {
          // If the VideoPlayerController is still initializing, show a
          // loading spinner.
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );*/
        VisibilityDetector(
      key: ObjectKey(flickManager),
      onVisibilityChanged: (visibility) {
        if (visibility.visibleFraction == 0 && this.mounted) {
          flickManager.flickControlManager?.autoPause();
        } else if (visibility.visibleFraction == 1) {
          flickManager.flickControlManager?.autoResume();
        }
      },
      child: Stack(
        children: [
          Container(
            child: FlickVideoPlayer(
              flickManager: flickManager,
              flickVideoWithControls: FlickVideoWithControls(
                videoFit: BoxFit.contain,
              ),
            ),
          ),
          Positioned(
            bottom: 30,
            right: 0,
            child: ElevatedButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.volume_up, color: AppColor.darkBlueColor),
                  Text(
                    isMusicOnOff! ? "Music On" : "Music Off",
                    style: TextStyle(color: AppColor.darkBlueColor),
                  ),
                ],
              ),
              style: ElevatedButton.styleFrom(
                // primary: AppColor.primaryDarkBackgroundColor,
                fixedSize: Size(130, 50),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
              ),
              onPressed: () {
                _setMusicOnOffSound(isMusicOnOff!);
                isMusicOnOff = !isMusicOnOff!;
                setState(() {});
              },
            ),
          ),
        ],
      ),
    );
  }

  _setMusicOnOffSound(bool isOnOff) {
    if (isOnOff) {
      videoPlayerController.setVolume(0);
    } else {
      videoPlayerController.setVolume(1);
    }
  }

  void _initVideoController() {
    videoPlayerController.initialize();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // Plays the video once the widget is build and loaded.
      //controller.play();
      videoPlayerController.setLooping(true);
      Future.delayed(Duration(seconds: 1), () {
        videoPlayerController.initialize().then((value) => videoPlayerController.play());
      });
    });
  }
}
