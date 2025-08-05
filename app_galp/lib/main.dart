import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFFBD130), /*cor de fundo*/
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 20),
                const Text(
                  'Galp Life Saving Rules',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'VerdanaPro',
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Clique no ícone da regra de\nsegurança que pretende consultar',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'VerdanaPro',
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 20),

                /*grid com as 9 imagens*/
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: GridView.count(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(), /*sem scroll interno*/
                    crossAxisCount: 3,
                    crossAxisSpacing: 1, /*espaço entre as imagens - eixo do x*/
                    mainAxisSpacing: 1, /*espaço entre as imagens - eixo do y*/
                    childAspectRatio: 1,
                    children: List.generate(9, (index) {
                      return GestureDetector(
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          child: Image.asset(
                            'assets/images/img${index + 1}.png', /*carregar as imagens de 1 a 9*/
                            fit: BoxFit.contain,
                          ),
                        ),
                      );
                    }),
                  ),
                ),

                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFa551F), /*cor do butão*/
                    foregroundColor: Colors.white, /*cor do texto*/
                    padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 10),
                  ),
                  child: const Text('Iniciar Quiz'),
                ),
                const SizedBox(height: 250),
                const Text(
                  'ⓘ Termos e Condições',
                  style: TextStyle(fontSize: 12),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}