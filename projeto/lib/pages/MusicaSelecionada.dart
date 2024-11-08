import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:projeto/Shared/style.dart';

class Musicaselecionada extends StatefulWidget {
  const Musicaselecionada({super.key});

  @override
  State<Musicaselecionada> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Musicaselecionada> {
  late AudioPlayer _audioPlayer;
  bool _isPlaying = false;
  double _sliderValue = 0.0;
  Duration _duration = Duration.zero;
  Duration _currentPosition = Duration.zero;

  @override
  void initState() {
    super.initState();
    _audioPlayer = AudioPlayer();

    // Set up event listeners for duration and position changes
    _audioPlayer.onDurationChanged.listen((d) {
      setState(() {
        _duration = d;
      });
    });

    _audioPlayer.onPositionChanged.listen((p) {
      setState(() {
        _currentPosition = p;
        _sliderValue = p.inSeconds.toDouble();
      });
    });

    // Directly play the music by URL using UrlSource (new API)
    _audioPlayer.play(UrlSource('https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3'));
  }

  @override
  void dispose() {
    super.dispose();
    _audioPlayer.dispose(); // Clean up resources
  }

  void _togglePlayPause() {
    if (_isPlaying) {
      _audioPlayer.pause();
    } else {
      // Play the audio and provide the URL (or file path/asset) here using UrlSource
      _audioPlayer.play(UrlSource('https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3'));
    }
    setState(() {
      _isPlaying = !_isPlaying;
    });
  }

  void _seekTo(double value) {
    _audioPlayer.seek(Duration(seconds: value.toInt()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                Color(0xFF000000), // #000 59.6%
                Color(0xFF74502A),
              ],
              stops: [0.6, 1.0],
            ),
          ),
          child: Column(
            children: [
              const SizedBox(height: 50),

              // Header Row with Icons and Playlist Name
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.arrow_drop_down,
                      size: 40,
                      color: Colors.white,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "TOCANDO DA PLAYLIST",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white.withOpacity(0.8),
                          ),
                        ),
                        Text(
                          "Nome da playlists",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white.withOpacity(0.6),
                          ),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.more_vert,
                      size: 40,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 40),

              // Album Artwork
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/aerials.png', width: 380),
                ],
              ),

              const SizedBox(height: 40),

              // Song Info and Controls
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/aerials.png', width: 80),
                    const SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'System of a Down - ',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Aerials',
                          style: TextStyle(
                            color: MyColors.roxo,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 12),
                    Image.asset('assets/download button pressed.png', width: 35),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              // Controls Row
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.speaker,
                      size: 40,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 16),
                    Icon(
                      Icons.fast_rewind,
                      size: 40,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 16),
                    Spacer(),
                    IconButton(
                      icon: Icon(
                        _isPlaying ? Icons.pause_circle_filled : Icons.play_circle_filled,
                        size: 50,
                        color: Colors.white,
                      ),
                      onPressed: _togglePlayPause,
                    ),
                    const SizedBox(width: 16),
                    Icon(
                      Icons.fast_forward,
                      size: 40,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 16),
                    Row(
                      children: [
                        Icon(
                          Icons.repeat_rounded,
                          size: 30,
                          color: Colors.white,
                        ),
                        const SizedBox(width: 8),
                        Icon(
                          Icons.share,
                          size: 30,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // Music Progress Slider
              const SizedBox(height: 30),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [
                    Slider(
                      value: _sliderValue,
                      min: 0,
                      max: _duration.inSeconds.toDouble(),
                      onChanged: (value) {
                        setState(() {
                          _sliderValue = value;
                        });
                        _seekTo(value);
                      },
                      activeColor: Colors.green,
                      inactiveColor: Colors.grey,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          _currentPosition.toString().split('.').first,
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          _duration.toString().split('.').first,
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
