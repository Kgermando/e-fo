import 'package:flutter/material.dart';
import 'package:focad/constants/app_theme.dart';
import 'package:focad/layouts/layouts.dart';
import 'package:focad/locator.dart';
import 'package:focad/provider/app_provider.dart';
import 'package:focad/provider/controller.dart';
import 'package:focad/routes/route_names.dart';
import 'package:focad/routes/router.dart';
import 'package:provider/provider.dart';

void main() {
  // Init GetIt services.
  setupLocator();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider.value(value: AppProvider.init()),
    ChangeNotifierProvider(create: (context) => Controller())
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FOKAD',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
        fontFamily: 'OpenSans',
        // textTheme: GoogleFonts.openSansTextTheme(),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: TextButton.styleFrom(backgroundColor: secondaryColor),
        ),
        // textButtonTheme: TextButtonThemeData(
        //   style: TextButton.styleFrom(backgroundColor: secondaryColor),
        // )
      ),
      onGenerateRoute: generateRoute,
      initialRoute: layoutRoute,
      home: const LayoutsApp(),
    );
  }
}

class LayoutsApp extends StatelessWidget {
  const LayoutsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Layouts();
  }
}
