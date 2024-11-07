import 'package:flutter/material.dart';
import 'package:projeto/Shared/style.dart';

class ContiCadastro extends StatefulWidget {
  const ContiCadastro({super.key});

  @override
  State<ContiCadastro> createState() => _ContiCadastroState();
}

class _ContiCadastroState extends State<ContiCadastro> {
  final TextEditingController _controllerDay = TextEditingController();
  final TextEditingController _controllerYears = TextEditingController();
  String? _controllerMonth;
  String? _selectedGender; 

  final List<String> _months = List.generate(12, (index) => (index + 1).toString());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.preto,
      body: SingleChildScrollView(
        child: Form(
          child: Column(
            children: [
              const SizedBox(height: 71),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Transform.rotate(
                    angle: 11.96 * (3.14 / 180),
                    child: Image.asset(
                      "assets/Jacksons.png",
                      width: 79.29,
                      height: 49.65,
                    ),
                  ),
                  const Text(
                    "Jacksons",
                    style: TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 52,),
              const Text(
                "Falta pouco",
                style: TextStyle(
                  fontSize: 34
                ),
              ),
              const SizedBox(height: 79,),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: SizedBox(
                  width: 430,
                  height: 27,
                  child: Text(
                    "Qual é sua data de nascimento?",
                    style: TextStyle(
                      fontSize: 18,
                      color: MyColors.branco,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),            
                child: Row(
                  children: [
                    SizedBox(
                      width: 80,
                      height: 50,
                      child: TextFormField(
                        controller: _controllerDay,
                        decoration: const InputDecoration(
                          hintText: "Dia",
                          hintStyle: TextStyle(
                            fontSize: 20
                          ),
                          contentPadding: EdgeInsets.only(left: 8, top: 15),
                        ),
                      ),
                    ),
                    const SizedBox(width: 40,),
                    SizedBox(
                      width: 130,
                      height: 50,
                      child: DropdownButtonFormField<String>(
                        value: _controllerMonth,
                        decoration: const InputDecoration(labelText: 'Mês'),
                        items: _months.map((month) {
                          return DropdownMenuItem(
                            value: month,
                            child: Text(month),
                          );
                        }).toList(),
                        onChanged: (value) {
                          setState(() {
                            _controllerMonth = value;
                          });
                        },
                        validator: (value) => value == null ? 'Informe o mês' : null,
                      ),
                    ),
                    const SizedBox(width: 40,),
                    SizedBox(
                      width: 80,
                      height: 50,
                      child: TextFormField(
                        controller: _controllerYears,
                        decoration: const InputDecoration(
                          hintText: "Ano",
                          hintStyle: TextStyle(
                            fontSize: 20,
                          ),
                          contentPadding: EdgeInsets.only(left: 8, top: 15),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 36,),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20), 
                child: SizedBox(
                  width: 430,
                  height: 25,
                  child: Text(
                    "Qual é seu gênero?",
                    style: TextStyle(
                      fontSize: 18,
                      color: MyColors.branco
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  Container(
                    width: 392,
                    height: 51,
                    decoration: BoxDecoration(
                      color: MyColors.cinzaDate,  // A cor do fundo, que você pode personalizar conforme necessário
                      borderRadius: BorderRadius.circular(8),  // Bordas arredondadas, se necessário
                    ),
                    child: RadioListTile<String>(
                      title: const Text('Masculino'),
                      value: 'Masculino', 
                      groupValue: _selectedGender, 
                      activeColor: MyColors.roxo,  // Cor do item ativo
                      onChanged: (value) {
                        setState(() {
                          _selectedGender = value;  // Atualiza o valor de _selectedGender ao selecionar
                        });
                      },
                    ),
                  ),
                  const SizedBox(height: 11,),
                  SizedBox(
                    width: 392,
                    height: 51,
                    child: RadioListTile<String>(
                      title: const Text('Feminino'),
                      value: 'Feminino', 
                      groupValue: _selectedGender, 
                      activeColor: MyColors.roxo,
                      onChanged: (value) {
                        setState(() {
                          _selectedGender = value; 
                        });
                      },
                    ),
                  ),
                  const SizedBox(height: 11,),
                  SizedBox(
                    width: 392,
                    height: 51,
                    child: RadioListTile<String>(
                      title: const Text('Outro'),
                      value: 'Outro', 
                      groupValue: _selectedGender, 
                      activeColor: MyColors.roxo,
                      onChanged: (value) {
                        setState(() {
                          _selectedGender = value; 
                        });
                      },
                    ),
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
