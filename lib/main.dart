import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import 'screens/home/home_screen.dart';
import 'services/locale_manager.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final localeManager = await LocaleManager.create();
  runApp(DngToJpgApp(localeManager: localeManager));
}

class DngToJpgApp extends StatelessWidget {
  const DngToJpgApp({super.key, required this.localeManager});

  final LocaleManager localeManager;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<LocaleManager>.value(
      value: localeManager,
      child: Consumer<LocaleManager>(
        builder: (context, manager, _) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            onGenerateTitle: (context) =>
                AppLocalizations.of(context)!.appTitle,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
              useMaterial3: true,
            ),
            locale: manager.locale,
            supportedLocales: manager.supportedLocales,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            home: const HomeScreen(),
          );
        },
      ),
    );
  }
}
