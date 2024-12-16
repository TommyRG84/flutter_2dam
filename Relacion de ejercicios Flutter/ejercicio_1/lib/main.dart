import 'package:ejercicio_1/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:ejercicio_1/themes/theme_notifier.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeNotifier(),
      child: Consumer<ThemeNotifier>(
        builder: (context, themeNotifier, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Relación de ejercicios',
            theme: themeNotifier.theme,
            initialRoute: AppRoutes.initialRoute,
            routes: AppRoutes.getRoutes((String theme) {
              themeNotifier.setTheme(theme);
            }),
          );
        },
      ),
    );
  }
}
