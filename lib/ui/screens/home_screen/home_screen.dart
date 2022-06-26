import 'package:flutter/material.dart';

import '../../widgets/clock/clock_view.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: Theme.of(context).backgroundColor,
        child: ClockView(),
      ),
    );
  }
}
