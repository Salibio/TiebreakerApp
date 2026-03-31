import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tiebreaker_app/screens/home_screen.dart';
import 'services/decision_service.dart';

void main() => runApp(const TieBreakerApp());

class TieBreakerApp extends StatelessWidget {
  const TieBreakerApp ({super.key});

  @override
  Widget build(BuildContext context) {

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => DecisionService()),
      ],
      child: MaterialApp(
        title: 'Tiebreke App',
        theme: ThemeData(colorSchemeSeed: Colors.deepPurple),
        home:  HomeScreen(),
      ),
    );
  }
}