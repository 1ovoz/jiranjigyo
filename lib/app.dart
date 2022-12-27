import 'package:flutter/material.dart';
import 'homepage.dart';
import 'login.dart';
import 'reservation.dart';
import 'complaint.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        routes: {
          '/': (BuildContext context) => const MyHomePage(),
          '/login': (BuildContext context) => const LoginPage(),
          '/reservation': (BuildContext context) => const ReservationPage(),
          '/complaint': (BuildContext context) => const MyComplaint(),
        }
    );
  }
}