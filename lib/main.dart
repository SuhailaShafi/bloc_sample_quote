import 'package:bloc_demo/pages/quote/bloc/quote_bloc.dart';
import 'package:bloc_demo/pages/quote/quote_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => QuoteBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
            appBarTheme: AppBarTheme(
                titleTextStyle: TextStyle(color: Colors.white),
                backgroundColor: Color.fromARGB(255, 87, 90, 90)),
            scaffoldBackgroundColor: const Color.fromARGB(255, 87, 90, 90)),
        home: QuotePage(),
      ),
    );
  }
}
