import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xFF0A0E21),
        ),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
      ),
      home: const InputPage(),
    );
  }
}

// scaffoldBackgroundColor: const Color(0xFF0A0E21),
// textTheme: const TextTheme().copyWith(
//     bodyMedium: const TextStyle(
//          color: Colors.white,
//         fontSize: 15,
//         fontWeight: FontWeight.bold,
//     )
// ),
//textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.white)),
// colorScheme:  const ColorScheme.light().copyWith(
//   primary:  const Color(0xFF0A0E21),
//   secondary: Colors.purple,
// ),
