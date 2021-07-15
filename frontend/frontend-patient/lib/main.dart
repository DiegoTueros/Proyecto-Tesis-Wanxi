import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:wanxi/controllers/themes/app_theme.dart';
import 'package:wanxi/controllers/preferences/app_preferences.dart';
import 'package:wanxi/routes/app_routing.dart';
import 'package:wanxi/utils/utils_files.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final prefs = new AppPreference();
  await prefs.initPrefs();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => new AppTheme(prefs.darkTheme),
        ),
      ],
      child: MyApp(
        showDebugBanner: true,
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  final bool showDebugBanner;

  MyApp({@required this.showDebugBanner});

  @override
  Widget build(BuildContext context) {
    final currentTheme = Provider.of<AppTheme>(context).currentTheme;

    return MaterialApp(
      title: 'App',
      initialRoute: AppConstants.PAGE_HOME,
      routes: getAppRouting(),
      debugShowCheckedModeBanner: showDebugBanner,
      localizationsDelegates: [GlobalMaterialLocalizations.delegate],
      supportedLocales: [const Locale('en'), const Locale('es')],
      theme: currentTheme,
    );
  }
}
