import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:projeto/Shared/style.dart';

class ToggleIcon extends StatefulWidget {
  final IconData icon;
  final Color activeColor;
  final Color inactiveColor;
  final double size;

  ToggleIcon({
    required this.icon,
    this.activeColor = MyColors.roxo,
    this.inactiveColor = Colors.white,
    this.size = 30.0,
  });

  @override
  _ToggleIconState createState() => _ToggleIconState();
}

class _ToggleIconState extends State<ToggleIcon> {
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        child: Icon(
          widget.icon,
          color: isActive ? widget.activeColor : widget.inactiveColor,
          size: widget.size,
        ),
      ),
      onTap: () {
        setState(() {
          isActive = !isActive;
        });
      },
    );
  }
}

class Musicaselecionada extends StatefulWidget {
  const Musicaselecionada({super.key});

  @override
  State<Musicaselecionada> createState() => _MyWidgetState();
}

final List<Map<String, dynamic>> musicas = [
  {
    'image': 'assets/ghost.jpg',
    'banda': 'Ghost',
    'nome': 'Mary on A Cross',
    'musica': 'Ghost.mp3',
  },
  {
    'image': 'assets/SystemofaDownToxicityalbumcover.jpg',
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
    'image': 'assets/engenheiros_hawaii.jpg',
    'banda': 'Engenheiros do Hawaii',
    'nome': 'Era um garoto que como...',
    'musica': 'Engenheiros_Hawaii.mp3',
  },
    {
    'image': 'assets/Cirice.jpg',
    'banda': 'Ghost',
    'nome': 'Cirice',
    'musica': 'Cirice.mp3',
  },
    {
    'image': 'assets/SystemofaDownToxicityalbumcover.jpg',
    'banda': 'System Of Down',
    'nome': 'Toxicity',
    'musica': 'Toxicity.mp3',
  },
    {
    'image': 'assets/life_eternal.jpg',
    'banda': 'Ghost',
    'nome': 'Life Eternal',
    'musica': 'Life Eternal.mp3',
  },
    {
    'image': 'assets/he_is.jpg',
    'banda': 'Ghost',
    'nome': 'He is',
    'musica': 'He Is.mp3',
  },
    {
    'image': 'assets/kamaitachi.jpg',
    'banda': 'Kamaitachi',
    'nome': 'Sabbat',
    'musica': 'Sabbat.mp3',
  },
    {
    'image': 'assets/veigh.png',
    'banda': 'Veigh',
    'nome': 'Jeito Bandido',
    'musica': 'JEITO BANDIDO.mp3',
  },
    {
    'image': 'assets/kanyewest.jpg',
    'banda': 'Kanye West',
    'nome': 'POWER',
    'musica': 'POWER.mp3',
  },
    {
    'image': 'assets/Devils_Guns.jpg',
    'banda': 'Guns and Roses',
    'nome': 'This is Love ',
    'musica': 'This I Love.mp3',
  },
    {
    'image': 'assets/psychosocial.png',
    'banda': 'Slipknot',
    'nome': 'Psychosocial',
    'musica': 'Psychosocial.mp3',
  },
    {
    'image': 'assets/devil_in_i.jpg',
    'banda': 'Slipknot',
    'nome': 'The Devil in I ',
    'musica': 'Devil_in_I.mp3',
  },
      {
    'image': 'assets/people=shit.jpg',
    'banda': 'Slipknot',
    'nome': 'People = Shit ',
    'musica': 'People Shit.mp3',
  },
      {
    'image': 'assets/slipknot_image.jpg',
    'banda': 'Slipknot',
    'nome': 'Snuff',
    'musica': 'Snuff.mp3',
  },
        {
    'image': 'assets/ussewa.jpg',
    'banda': 'Ado',
    'nome': 'Usseewa',
    'musica': 'Ussewa.mp3',
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
      _currentMusicIndex = (_currentMusicIndex + 1) %
          musicas.length; // Avança e reinicia no final
    });
    _playMusic();
  }

  void _previousMusic() {
    setState(() {
      _currentMusicIndex =
          (_currentMusicIndex - 1 + musicas.length) % musicas.length;
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
              const SizedBox(height: 90),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      child: Container(
                        child: Icon(Icons.arrow_drop_down,
                            color: Colors.white, size: 50), // Adjusted size
                        width: 30,
                      ),
                      onTap: () {
                        Navigator.pushReplacementNamed(context, "/Home");
                      },
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
                          currentMusic['nome'],
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white.withOpacity(0.6),
                          ),
                        ),
                      ],
                    ),
                    GestureDetector(
                      child: Container(
                        child: Icon(
                          Icons.more_vert,
                          size: 50,
                          color: Colors.white,
                        ),
                      ),
                      onTap: () {},
                    ),

                  ],
                ),
              ),
              const SizedBox(height: 30),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(currentMusic['image'], width: 350, height: 350,),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 80),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(currentMusic['image'], width: 80, height: 80),
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
                    const SizedBox(width: 30),
                  ToggleIcon(icon: Icons.favorite),
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
                  ToggleIcon(icon: Icons.bluetooth, activeColor: const Color.fromARGB(255, 70, 113, 255)), 
                  const SizedBox(width: 10),
                  IconButton(
                    icon: const Icon(Icons.fast_rewind,
                        size: 40, color: Colors.white),
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
                    icon: const Icon(Icons.fast_forward,
                        size: 40, color: Colors.white),
                    onPressed: _nextMusic,
                  ),
                  const SizedBox(width: 10),
                  ToggleIcon(icon: Icons.repeat), 
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
