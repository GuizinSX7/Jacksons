import 'package:flutter/material.dart';
import 'package:projeto/pages/Home.dart';

class Pesquisa extends StatefulWidget {
  const Pesquisa({super.key});

  @override
  State<Pesquisa> createState() => _PesquisaState();
}

class _PesquisaState extends State<Pesquisa> {
  TextEditingController _controller = TextEditingController();
  List<Map<String, String>> allItems = [
    {
      "title": "Aerials",
      "genre": "Música",
      "band": "System Of Down",
      "image": "assets/aerials.png"
    },
    {
      "title": "Toxicity",
      "genre": "Música",
      "band": "System Of Down",
      "image": "assets/aerials.png",
      'route': '/MusicaSelecionada'
    },
    {
      "title": "Podpah",
      "genre": "Podcast",
      "band": "Podpah",
      "image": "assets/podpah.png",
      'route': '/MusicaSelecionada'
    },
    {
      "title": "Psychosocial",
      "genre": "Música",
      "band": "SlipKnot",
      "image": "assets/psychosocial.png",
      'route': '/MusicaSelecionada'
    },
    {
      "title": "Master of Puppets",
      "genre": "Música",
      "band": "Metallica",
      "image": "assets/master_of_puppets.png",
      'route': '/MusicaSelecionada'
    },
    {
      "title": "Duality",
      "genre": "Música",
      "band": "Slipknot",
      "image": "assets/duality.png",
      'route': '/MusicaSelecionada'
    }, 
    {
      "title": "Devil's Gun",
      "genre": "Música",
      "band": "C.J. & Co",
      "image": "assets/Devils_Guns.png",
      'route': '/MusicaSelecionada'
    },


  ];

  List<Map<String, String>> filteredItems = [];

  @override
  void initState() {
    super.initState();
    // Inicializa com todos os itens
    filteredItems = allItems;
    _controller.addListener(() {
      filterItems();
    });
  }

  // Função para filtrar os itens conforme o texto no campo de pesquisa
  void filterItems() {
    String query = _controller.text.toLowerCase();
    setState(() {
      filteredItems = allItems.where((item) {
        return item['title']!.toLowerCase().contains(query) ||
               item['genre']!.toLowerCase().contains(query) ||
               item['band']!.toLowerCase().contains(query);
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(height: 30),
            TextFormField(
              controller: _controller,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: 'O que você quer ouvir?',
                hintStyle:
                    const TextStyle(color: Color.fromARGB(255, 31, 31, 31)),
                prefixIcon: IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Home()),
                    );
                  },
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                filled: true,
                fillColor: const Color.fromARGB(255, 88, 88, 88),
              ),
            ),
            const SizedBox(height: 20),
            // Condicional para exibir "Pesquisando" com o texto digitado
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                _controller.text.isEmpty
                    ? 'Buscas Recentes'
                    : 'Pesquisando: ${_controller.text}', // Exibe o texto do input
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: filteredItems.length,
                itemBuilder: (context, index) {
                  var item = filteredItems[index];
                  return Column(
                    children: [
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Row(
                          children: [
                            Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: AssetImage(item['image']!),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  item['title']!,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                // Exibe o gênero e a banda
                                Text(
                                  '${item['genre']} - ${item['band']}',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
