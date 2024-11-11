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
  bool isCheckedMasculino = false;
  bool isCheckedFeminino = false;
  bool isCheckedOutro = false;
  bool isCheckedTermos = false;
  final _formKey = GlobalKey<FormState>();
  String? _controllerMonth;
  String? _selectedGender;

  final List<String> _months =
      List.generate(12, (index) => (index + 1).toString());

  void _onCheckboxChanged(int index) {
    setState(() {
      if (index == 1) {
        isCheckedMasculino = true;
        isCheckedFeminino = false;
        isCheckedOutro = false;
      }
      if (index == 2) {
        isCheckedMasculino = false;
        isCheckedFeminino = true;
        isCheckedOutro = false;
      }
      if (index == 3) {
        isCheckedMasculino = false;
        isCheckedFeminino = false;
        isCheckedOutro = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.preto,
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
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
              const SizedBox(
                height: 52,
              ),
              const Text(
                "Falta pouco",
                style: TextStyle(fontSize: 34),
              ),
              const SizedBox(
                height: 79,
              ),
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
                    Container(
                      width: 80,
                      height: 50,
                      color: MyColors.cinzacheck,
                      child: TextFormField(
                        controller: _controllerDay,
                        decoration: const InputDecoration(
                          hintText: "Dia",
                          hintStyle: TextStyle(
                            fontSize: 20,
                            color: MyColors.branco
                          ),
                          contentPadding: EdgeInsets.only(left: 8,),
                        ),
                        validator: (String? Dia) {
                          if (Dia == null || Dia.isEmpty) {
                            return "O dia não pode estar vazio";
                          }
                          final int? numero = int.tryParse(Dia);
                          if (numero == null) {
                            return "Por favor, insira um número válido";
                          }
                          if (numero > 31 || numero < 0) {
                            return "Dia inválido";
                          }
                          return null;
                        },
                      ),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    Container(
                      width: 130,
                      height: 50,
                      color: MyColors.cinzacheck,
                      child: DropdownButtonFormField<String>(
                        value: _controllerMonth,
                        decoration: const InputDecoration(
                          labelText: 'Mês',
                          labelStyle: TextStyle(
                            color: MyColors.branco,
                            fontSize: 20,
                          ),
                          contentPadding: EdgeInsets.only(left: 8,)
                        ),
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
                        validator: (value) =>
                            value == null ? 'Informe o mês' : null,
                      ),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    Container(
                      width: 80,
                      height: 50,
                      color: MyColors.cinzacheck,
                      child: TextFormField(
                        controller: _controllerYears,
                        decoration: const InputDecoration(
                          hintText: "Ano",
                          hintStyle: TextStyle(
                            fontSize: 20,
                            color: MyColors.branco
                          ),
                          contentPadding: EdgeInsets.only(left: 8,),
                        ),
                        validator: (String? Ano) {
                          if (Ano == null || Ano.isEmpty) {
                            return "O dia não pode estar vazio";
                          }
                          final int? numero = int.tryParse(Ano);
                          if (numero == null) {
                            return "Por favor, insira um número válido";
                          }
                          if (numero > 2010 || numero < 1924) {
                            return "Dia inválido";
                          }
                          return null;
                        },
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 36,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: SizedBox(
                  width: 430,
                  height: 25,
                  child: Text(
                    "Qual é seu gênero?",
                    style: TextStyle(fontSize: 18, color: MyColors.branco),
                  ),
                ),
              ),
              Column(
                children: [
                  _buildCheckboxOption('Masculino', 1, isCheckedMasculino),
                  const SizedBox(height: 11),
                  _buildCheckboxOption('Feminino', 2, isCheckedFeminino),
                  const SizedBox(height: 11),
                  _buildCheckboxOption('Outro', 3, isCheckedOutro),
                ],
              ),
              const SizedBox(height: 24,),
              Row(
                children: [
                  const SizedBox(height: 24,),
                  Checkbox(
                    value: isCheckedTermos,
                    activeColor: MyColors.roxo,
                    checkColor: MyColors.branco,
                    onChanged: (bool? value) {
                      setState(() {
                        isCheckedTermos = value ?? false;
                      });
                    },
                  ),
                  const Flexible(
                    child: Text(
                      "Aceito os Termos e Condições de Uso do Jacksons e a Política e Privacidade",
                      style: TextStyle(
                        color: Colors.white, 
                        fontSize: 16,
                      ),
                      softWrap: true,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 49,),
              Container(
                width: 285,
                height: 51,
                child: ElevatedButton(
                  onPressed: () {
                    buttonEnterClick();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: MyColors.roxo,
                  ),
                  child: const Center(
                    child: Text(
                      'Logar',
                      style: TextStyle(
                        fontSize: 24,
                        color: MyColors.branco,
                      ),
                    ),
                  )
                ),
              ),
              const SizedBox(height: 28,),
              GestureDetector(
                child: const Text(
                  "Voltar",
                  style: TextStyle(
                    fontSize: 24,
                    color: MyColors.branco
                  ),
                ),
                onTap: () {
                  Navigator.pushReplacementNamed(context, "/Login");
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCheckboxOption(String label, int index, bool isChecked) {
    return Container(
      width: 382,
      height: 51,
      decoration: BoxDecoration(
        color: MyColors.cinzacheck,
        borderRadius: BorderRadius.circular(8),
      ),
      child: CheckboxListTile(
        title: Text(
          label,
          style: const TextStyle(
            color: MyColors.branco,
            fontSize: 16,
          ),
        ),
        value: isChecked,
        activeColor: MyColors.roxo,
        checkColor: MyColors.branco,
        onChanged: (bool? value) {
          _onCheckboxChanged(index);
        },
        controlAffinity: ListTileControlAffinity.leading,
      ),
    );
  }

  void buttonEnterClick() {
    if (_formKey.currentState!.validate()) {
      print('form ok');
      Navigator.pushReplacementNamed(context, '/Home');
    } else {
      print('form erro');
    }
  }
}

