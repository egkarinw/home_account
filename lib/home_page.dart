import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<void> delayTime() async {
    await Future.delayed( const Duration(seconds: 3), () => debugPrint("Hello"));
    Future.delayed( const Duration(seconds: 2), () => debugPrint("Bye"));
  }

  @override
  void initState() {
    super.initState();
    delayTime();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
