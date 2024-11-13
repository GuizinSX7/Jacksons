import 'package:flutter/material.dart';
import 'package:projeto/Shared/style.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:audioplayers/audioplayers.dart';



class PlayerMusica extends StatefulWidget {
  const PlayerMusica({super.key});

  @override
  State<PlayerMusica> createState() => _PlayerMusicaState();
}

class _PlayerMusicaState extends State<PlayerMusica> {
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
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: MyColors.preto,
          border: Border.all(
            color: MyColors.roxo,
            width: 2,
          )
        ),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset('assets/aerials.png'),

                Column(
                  children: [
                    Text('System of down'),
                    Text('Aerials') 
                  ],
                ),
                Icon(
                  FontAwesomeIcons.headphones,
                  color: MyColors.roxo,            
                  ),
                  Icon(
                    Icons.favorite,
                    color: MyColors.roxo,
                  )
                ],
            ),
            Row(
              children: [
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

              ],
            )
          ],

        ),
      ),
    );
  }
}