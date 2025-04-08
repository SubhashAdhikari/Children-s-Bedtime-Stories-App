import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart'; // For playing audio

class StoryScreen extends StatefulWidget {
  final String storyTitle;
  final String storyContent;
  final String storyImage;
  final String storyAudio;

  StoryScreen({
    required this.storyTitle,
    required this.storyContent,
    required this.storyImage,
    required this.storyAudio,
  });

  @override
  _StoryScreenState createState() => _StoryScreenState();
}

class _StoryScreenState extends State<StoryScreen> {
  late AudioPlayer _audioPlayer;

  @override
  void initState() {
    super.initState();
    _audioPlayer = AudioPlayer();
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  // Method to play the audio
  void _playAudio() async {
    await _audioPlayer.setUrl(widget.storyAudio);
    _audioPlayer.play();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.storyTitle),
      ),
      body: SingleChildScrollView(
        // Make it scrollable in case content overflows
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Display the story image
              Image.network(widget.storyImage, fit: BoxFit.cover),

              // Display the story title
              Text(
                widget.storyTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),

              Padding(
                padding: const EdgeIal: 8.0),
                child: Text(
                  widget.storyContent,
              .textTheme.bodyLarge,
                ),
              ),

              ElevatedButton(
                onPressed: _playAudio,
                child: Text('Read to Me'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
