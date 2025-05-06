import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:weweatherapp/Pages/StartPage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting(
      'id_ID', null); // Inisialisasi locale Bahasa Indonesia
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WeWeather',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromRGBO(152, 44, 23, 1)),
        useMaterial3: true,
      ),
      home: StartPage(),
    );
  }
}
