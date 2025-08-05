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
        backgroundColor: const Color(0xFFFBD130), /*cor do fundo*/
        body: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 40),
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
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: GridView.count(
                    crossAxisCount: 3,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                    children: List.generate(9, (index) {
                      return GestureDetector(
                        onTap: () {},
                        child: Image.asset('assets/images/img${index + 1}.png'),
                      );
                    }),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFa551F),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                ),
                child: const Text('Iniciar Quizz'),
              ),
              const SizedBox(height: 20),
              const Text(
                'ⓘ Termos e Condições',
                style: TextStyle(fontSize: 12),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}