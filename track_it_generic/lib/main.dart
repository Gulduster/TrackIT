import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sedel_oficina_maqueta/config/router/app_router.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:sedel_oficina_maqueta/config/theme/app_theme.dart';
import 'provider/orden_provider.dart';

Future<void> main() async {
  runApp(ChangeNotifierProvider(
    create: (_) => OrdenProvider(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme(selectedColor: 0);
    return MaterialApp.router(
      theme: appTheme.getTheme(),
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      title: 'Track IT',
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('es'), // Spanish
        Locale('en'), // English
      ],
    );
  }
}
