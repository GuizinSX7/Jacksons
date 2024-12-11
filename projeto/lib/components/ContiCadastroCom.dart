import 'package:flutter/material.dart';
import 'package:projeto/Shared/style.dart';
import '';

class ContiCadastroComp extends StatefulWidget {
  const ContiCadastroComp({super.key});

  @override
  State<ContiCadastroComp> createState() => _ContiCadastroCompState();
}

class _ContiCadastroCompState extends State<ContiCadastroComp> {
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

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: screenWidth * 0.9,
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            const SizedBox(height: 52),
            const Text(
              "Falta pouco",
              style: TextStyle(fontSize: 34),
            ),
            const SizedBox(height: 79),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Qual é sua data de nascimento?",
                style: TextStyle(
                  fontSize: 18,
                  color: MyColors.branco,
                ),
              ),
            ),
            Row(
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
                const SizedBox(width: 40),
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
                const SizedBox(width: 40),
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
                    ),
                    validator: (String? Ano) {
                      if (Ano == null || Ano.isEmpty) {
                        return "O ano não pode estar vazio";
                      }
                      final int? numero = int.tryParse(Ano);
                      if (numero == null) {
                        return "Por favor, insira um número válido";
                      }
                      if (numero > 2010 || numero < 1924) {
                        return "Ano inválido";
                      }
                      return null;
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 36),
            SizedBox(
              width: 430,
              height: 25,
              child: Text(
                "Qual é seu gênero?",
                style: TextStyle(fontSize: 18, color: MyColors.branco),
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
            const SizedBox(height: 24),
            Row(
              children: [
                const SizedBox(height: 24),
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
                    "Aceito os Termos e Condições de Uso do Jacksons e a Política de Privacidade",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                    softWrap: true,
                  ),
                )
              ],
            ),
            const SizedBox(height: 49),
            Container(
              width: 285,
              height: 51,
              child: ElevatedButton(
                onPressed: buttonEnterClick,
                style: ElevatedButton.styleFrom(
                  backgroundColor: MyColors.roxo,
                ),
                child: const Center(
                  child: Text(
                    'Cadastrar',
                    style: TextStyle(
                      fontSize: 24,
                      color: MyColors.branco,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 28),
            GestureDetector(
              child: const Text(
                "Voltar",
                style: TextStyle(fontSize: 24, color: MyColors.branco),
              ),
              onTap: () {
                Navigator.pushReplacementNamed(context, "/principal");
              },
            )
          ],
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
      String dia = _controllerDay.text;
      String ano = _controllerYears.text;
      String mes = _controllerMonth ?? '';
      String genero = _selectedGender ?? 'Não especificado';

      // Aqui você pode chamar a função que envia os dados para o banco
      // Exemplo fictício de uma função para enviar dados:
      print('Dia: $dia, Mês: $mes, Ano: $ano, Gênero: $genero');
      Navigator.pushReplacementNamed(context, '/principal');
    } else {
      print('form erro');
    }
  }
}
