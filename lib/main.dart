import 'package:booking_core_istanbul/providers/provider_facilities_state.dart';
import 'package:booking_core_istanbul/ui/Login_page/login.dart';
import 'package:booking_core_istanbul/providers/provider_login_states.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


void main() {
  var app = MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => LoginStates(),
    ),
    ChangeNotifierProvider(
      create: (context) => FacilitiesPageState(),
    ),
  ], child: const MyApp());
  runApp(app);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Login(),

      ),
    );
  }
}
