import 'package:flutter/material.dart';

class AppTheme {
  static const Color primario = Color.fromARGB(255, 76, 182, 103);
  static final ThemeData darkTheme = ThemeData.dark().copyWith(

      //AppBarTheme
      appBarTheme: const AppBarTheme(color: primario, elevation: 0));

  static ThemeData get lightTheme => ThemeData.light().copyWith(
        //AppBarTheme
        appBarTheme:
            const AppBarTheme(color: primario, elevation: 0, centerTitle: true),

        //TextButton
        textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(foregroundColor: primario)),

        //FloatingActionBotttons

        floatingActionButtonTheme:
            const FloatingActionButtonThemeData(backgroundColor: primario),

        //ElevatedButtons
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.red,
              shape: const StadiumBorder(),
              elevation: 10),
        ),
        inputDecorationTheme: const InputDecorationTheme(
            floatingLabelStyle: TextStyle(color: primario),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: primario),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: primario),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            )),
      );
}
