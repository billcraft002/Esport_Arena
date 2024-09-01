// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Somescreen extends StatefulWidget {
  const Somescreen({super.key});

  @override
  State<Somescreen> createState() => _SomescreenState();
}

class _SomescreenState extends State<Somescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          MaterialButton(
            onPressed: () {
              // navigationService.navigateTo(Routes.secondScreen,arguments: SecondScreenArguments(value: value))
            },
          )
        ],
      ),
    );
  }
}
