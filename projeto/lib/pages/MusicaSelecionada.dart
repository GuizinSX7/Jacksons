import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:projeto/Shared/style.dart';

class Musicaselecionada extends StatefulWidget {
  const Musicaselecionada({super.key});

  @override
  State<Musicaselecionada> createState() => _MyWidgetState();
}

final List<Map<String, dynamic>> musicas = [
  {
    'image': 'assets/Ghostss.jfif',
    'banda': 'Ghost',
    'nome': 'Mary on A Cross',
    'musica': 'Ghost.mp3',
  },
  {
    'image': 'assets/SOAD.jfif',
    'banda': 'System Of Down',
    'nome': 'Aerials',
    'musica': 'AERIALS.mp3',
  },
  {
    'image': 'assets/slipknot_image.jpg',
    'banda': 'Slipknot',
    'nome': 'Devil in I',
    'musica': 'Devil_in_I.mp3',
  },
  {
    'image': 'assets/slipknot_image.jpg',
    'banda': 'Slipknot',
    'nome': 'Duality',
    'musica': 'Duality.mp3',
  },
  {
    'image': 'assets/engenharia_havaiana.jfif',
    'banda': 'Engenheiros do Hawaii',
    'nome': 'Era um garoto que como eu Amava os Beatles e os Rolling Stones',
    'musica': 'Engenheiros_Hawaii.mp3',
  },
];

class _MyWidgetState extends State<Musicaselecionada> {
  late AudioPlayer _audioPlayer;
  bool _isPlaying = false;
  int _currentMusicIndex = 0; // Índice da música atual
  double _sliderValue = 0.0;
  Duration _duration = Duration.zero;
  Duration _currentPosition = Duration.zero;

  @override
  void initState() {
    super.initState();
    _audioPlayer = AudioPlayer();

    // Listeners para duração e posição da música
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

    // Toca a primeira música ao iniciar
    _playMusic();
  }

  @override
  void dispose() {
    super.dispose();
    _audioPlayer.dispose();
  }

  void _playMusic() async {
    String musicFile = musicas[_currentMusicIndex]['musica'];
    await _audioPlayer.play(AssetSource(musicFile));
    setState(() {
      _isPlaying = true;
    });
  }

  void _pauseMusic() {
    _audioPlayer.pause();
    setState(() {
      _isPlaying = false;
    });
  }

  void _nextMusic() {
    setState(() {
      _currentMusicIndex =
          (_currentMusicIndex + 1) % musicas.length; // Avança e reinicia no final
    });
    _playMusic();
  }

  void _previousMusic() {
    setState(() {
      _currentMusicIndex = (_currentMusicIndex - 1 + musicas.length) % musicas.length;
    });
    _playMusic();
  }

  void _seekTo(double value) {
    _audioPlayer.seek(Duration(seconds: value.toInt()));
  }

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> currentMusic = musicas[_currentMusicIndex];

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                const Color(0xFF000000),
                const Color(0xFF74502A),
              ],
              stops: const [0.6, 1.0],
            ),
          ),
          child: Column(
            children: [
              const SizedBox(height: 80),
              // Informações da música atual
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(currentMusic['image'], width: 80),
                    ),
                    const SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          currentMusic['banda'],
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          currentMusic['nome'],
                          style: TextStyle(
                            color: MyColors.roxo,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 10),

              // Slider de progresso da música
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          _currentPosition.toString().split('.').first,
                          style: const TextStyle(color: Colors.white),
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
                          style: const TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // Controles de reprodução
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: const Icon(Icons.fast_rewind, size: 40, color: Colors.white),
                    onPressed: _previousMusic,
                  ),
                  IconButton(
                    icon: Icon(
                      _isPlaying ? Icons.pause_circle : Icons.play_circle,
                      size: 60,
                      color: Colors.white,
                    ),
                    onPressed: _isPlaying ? _pauseMusic : _playMusic,
                  ),
                  IconButton(
                    icon: const Icon(Icons.fast_forward, size: 40, color: Colors.white),
                    onPressed: _nextMusic,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
