import 'package:flutter/material.dart';
import 'package:tonoun/Colors/theme_data.dart';
import 'package:tonoun/screen/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:provider/provider.dart';
import 'package:tonoun/provider/dark_theme_provider.dart';
import 'package:tonoun/screen/btn_bar.dart';
import 'package:tonoun/sevices/widgets/detail.dart';
import 'package:tonoun/sevices/widgets/test.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  DarkThemePovider themeChangeProvider = DarkThemePovider();

  void getCurrentAppTheme() async {
    themeChangeProvider.setDarkTheme =
        await themeChangeProvider.darkThemePrefs.getTheme();
  }

  @override
  void initState() {
    getCurrentAppTheme();
    super.initState();
    
  }
  @override
  Widget build(BuildContext context) {
   
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_){
          return themeChangeProvider;
        })
      ],
      child: Consumer<DarkThemePovider>(
        builder: (context, themeProvider, child) {
          
          return MaterialApp(
            title: 'Flutter Demo',
            theme: Styles.themeData(themeProvider.getDarkTheme, context),
            home: const BottomBarScreen() ,
            debugShowCheckedModeBanner: false,
          );
        }
      ),
    );
  }
}
