// import 'package:audioplayers/audioplayers.dart';
// import 'package:flutter/material.dart';

// class AudioPlayingWidget extends StatefulWidget {
//   const AudioPlayingWidget({super.key});

//   @override
//   State<AudioPlayingWidget> createState() => _AudioPlayingWidgetState();
// }

// class _AudioPlayingWidgetState extends State<AudioPlayingWidget> {
//   bool isPlaying = false;
//   late final AudioPlayer player;
//   late final AssetSource path;

//   Duration _duration = const Duration();
//   Duration _position = const Duration();

//   @override
//   void initState() {
//     initPlayer();
//     super.initState();
//   }

//   @override
//   void dispose() {
//     player.dispose();
//     super.dispose();
//   }

//   Future initPlayer() async {
//     player = AudioPlayer();
//     path = AssetSource('assets/adzan_mekkah.mp3');

//     // set a callback for changing duration
//     player.onDurationChanged.listen((Duration d) {
//       setState(() => _duration = d);
//     });

//     // set a callback for position change
//     player.onPositionChanged.listen((Duration p) {
//       setState(() => _position = p);
//     });

//     // set a callback for when audio ends
//     player.onPlayerComplete.listen((_) {
//       setState(() => _position = _duration);
//     });
//   }

//   void playPause() async {
//     if (isPlaying) {
//       player.pause();
//       isPlaying = false;
//     } else {
//       player.play(path);
//       isPlaying = true;
//     }
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(16.0),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           // const AudioInfo(),
//           // const SizedBox(height: 50),
//           // Slider(
//           //   value: _position.inSeconds.toDouble(),
//           //   onChanged: (value) async {
//           //     await player.seek(Duration(seconds: value.toInt()));
//           //     setState(() {});
//           //   },
//           //   min: 0,
//           //   max: _duration.inSeconds.toDouble(),
//           //   inactiveColor: Colors.grey,
//           //   activeColor: Colors.red,
//           // ),
//           // Row(
//           //   mainAxisAlignment: MainAxisAlignment.end,
//           //   children: [
//           //     Text(_duration.format()),
//           //   ],
//           // ),
//           const SizedBox(height: 50),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               InkWell(
//                 onTap: () {
//                   player.seek(Duration(seconds: _position.inSeconds - 10));
//                   setState(() {});
//                 },
//                 child: Icon(Icons.settings_backup_restore),
//               ),
//               const SizedBox(width: 20),
//               InkWell(
//                 onTap: playPause,
//                 child: Icon(
//                   isPlaying ? Icons.pause_circle : Icons.play_circle,
//                   color: Colors.red,
//                   size: 100,
//                 ),
//               ),
//               const SizedBox(width: 20),
//               InkWell(
//                 onTap: () {
//                   player.seek(Duration(seconds: _position.inSeconds + 10));
//                   setState(() {});
//                 },
//                 child: Icon(Icons.forward_10),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
