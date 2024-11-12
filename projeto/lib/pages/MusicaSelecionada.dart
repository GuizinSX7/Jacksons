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

    // Play the song from assets (using AssetSource)
    _audioPlayer.play(AssetSource('AERIALS.mp3'));
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
      _audioPlayer.play(AssetSource('AERIALS.mp3'));
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
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    
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
              const SizedBox(height: 80),
              // Header Row with Icons and Playlist Name
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.arrow_drop_down,
                      size: 60,
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
                      size: 50,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),

              // Album Artwork with Border Radius
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30.0),
                child: ClipRRect(
                  child: Image.asset(
                    'assets/aerials.png',
                    width: 300,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              const SizedBox(height: 50),

              // Song Info and Controls
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset('assets/aerials.png', width: 80),
                    ),
                    const SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'System of a Down - ',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Aerials',
                          style: TextStyle(
                            color: MyColors.roxo,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 12),
                    Image.asset('assets/download button pressed.png',
                    width: 35,),
                                      ],
                ),
              ),

              const SizedBox(height: 10),

              // Music Progress Slider (Wider)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          _currentPosition.toString().split('.').first,
                          style: TextStyle(color: Colors.white),
                        ),
                        Expanded(
                          child: Slider(
                            value: _sliderValue,
                            min: 0,
                            max: _duration.inSeconds.toDouble(),
                            onChanged: (value) {
                              setState(() {
                                _sliderValue = value;
                              });
                              _seekTo(value);
                            },
                            activeColor: MyColors.roxo,
                            inactiveColor: Colors.grey[700],
                          ),
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

              const SizedBox(height: 20),

              // Controls Row (Centered)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.speaker,
                      size: 40,
                      color: Colors.white.withOpacity(0.7),
                    ),
                    const SizedBox(width: 50),
                    Icon(
                      Icons.fast_rewind,
                      size: 40,
                      color: Colors.white.withOpacity(0.7),
                    ),
                    const Spacer(), // This spacer pushes the play button to the center
                    IconButton(
                      icon: Icon(
                        _isPlaying
                            ? Icons.pause_circle_filled
                            : Icons.play_circle_filled,
                        size: 60,
                        color: Colors.white,
                      ),
                      onPressed: _togglePlayPause,
                    ),
                    const Spacer(), // This spacer pushes the play button to the center
                    Icon(
                      Icons.fast_forward,
                      size: 40,
                      color: Colors.white.withOpacity(0.7),
                    ),
                    const SizedBox(width: 24),
                    Row(
                      children: [
                        Icon(
                          Icons.repeat_rounded,
                          size: 30,
                          color: Colors.white.withOpacity(0.7),
                        ),
                        const SizedBox(width: 8),
                        Icon(
                          Icons.share,
                          size: 30,
                          color: Colors.white.withOpacity(0.7),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
