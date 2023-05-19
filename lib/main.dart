import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hlogistic/core/init/cache/local_Manager.dart';
import 'package:hlogistic/core/init/lang/language_Manager.dart';
import 'package:hlogistic/core/init/navigation/navigation_router.dart';
import 'package:hlogistic/product/components/drawer/navigation_rail.dart';
import 'package:hlogistic/product/components/drawer/provider_navigationrail.dart';

import 'core/init/theme/theme_settings.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  _init();

  runApp(EasyLocalization(
      saveLocale: true,
      supportedLocales: LanguageManager.instance.supportedLocales,
      path: LanguageManager.instance.path,
      fallbackLocale: LanguageManager.instance.trLocale,
      child: const MyApp()));
}

Future<void> _init() async {
  LanguageManager.instance;
  await LocaleManager.prefrencesInit();
  await EasyLocalization.ensureInitialized();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(child: Consumer(builder: (context, WidgetRef ref, _) {
      final theme = ref.watch<ThemeSettings>(themeProvider);
      //final routerController = watch.watch<NavigationGoRouter>(goRouterProvider);
      final deneme = NavigationGoRouter();
      print("bura çalişti");
      return MaterialApp.router(
        title: "HLojistik",
        theme: theme.themeData,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        debugShowCheckedModeBanner: false,
        routeInformationProvider: deneme.router.routeInformationProvider,
        routeInformationParser: deneme.router.routeInformationParser,
        routerDelegate: deneme.router.routerDelegate,
      );
    }));
  }
}

class MyHomePage extends ConsumerWidget {
  MyHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print("main page build çalıştı");

    return Scaffold(
        body: Consumer(
          builder: (context, WidgetRef ref, child) {
            final selectedIndex =
                ref.watch(navigationRailProvider).selectedIndex;

            print("riverpod çALIŞTI = $selectedIndex");
            return Row(
              children: [
                const NavigationRailWidget(),
                Expanded(
                  child: ref.read(navigationRailProvider).pages[selectedIndex],
                )
              ],
            );
          },
        ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {
        //     ref.read<ThemeSettings>(themeProvider).toggleTheme();
        //   },
        //   child: const Icon(Icons.add),
        // )
        
        
        );
  }
}
