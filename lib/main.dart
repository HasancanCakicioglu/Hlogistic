import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hlogistic/core/constants/navigation/navigation_constants.dart';
import 'package:hlogistic/core/init/cache/local_Manager.dart';
import 'package:hlogistic/core/init/lang/language_Manager.dart';
import 'package:hlogistic/core/init/navigation/navigation_router.dart';
import 'package:hlogistic/feature/components/drawer/navigation_rail.dart';



import 'core/init/theme/theme_settings.dart';


Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  _init();
  
  runApp(
    EasyLocalization(
      saveLocale: true,
      supportedLocales: LanguageManager.instance.supportedLocales,
      path: LanguageManager.instance.path,
      fallbackLocale: LanguageManager.instance.trLocale,
      child: const MyApp()));

  
}


Future<void> _init()async{
  LanguageManager.instance;
  await LocaleManager.prefrencesInit();
  await EasyLocalization.ensureInitialized();

  
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   
    return  ProviderScope(child: Consumer(builder: (context,watch,_){
        final theme = watch.watch<ThemeSettings>(themeProvider);
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
          routeInformationProvider:deneme.router.routeInformationProvider,
          routeInformationParser: deneme.router.routeInformationParser,
          routerDelegate: deneme.router.routerDelegate,
        );
      })
      );
  }
}

class MyHomePage extends ConsumerWidget {
   MyHomePage({super.key, required this.title});

  final String title;
  
  @override
  Widget build(BuildContext context,WidgetRef ref) {
    print("main page build çalıştı");
    
    return Scaffold(
      
      body:NavigationRailWidget(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          ref.read<ThemeSettings>(themeProvider).toggleTheme();
        },
        child: const Icon(Icons.add),
      )
    );
  }
}


class denemememe extends StatefulWidget {
  denemememe({Key? key}) : super(key: key);

  @override
  State<denemememe> createState() => _denemememeState();
}

class _denemememeState extends State<denemememe> {
  @override
  Widget build(BuildContext context) {
    
    return Expanded(child: Container(
      width: 1000,
      color: Colors.purple,
    ));
  }
}



Widget _buildContent(int selectedIndex) {
    switch (selectedIndex) {
      case 0:
        return Text('Header Content');
      case 1:
        return Text('List Item 1 Content');
      case 2:
        return Text('List Item 2 Content');
      default:
        return Container();
    }
  }