// ignore_for_file: file_names

import 'package:flutter/material.dart';


class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key, required this.value});
  final double value;
  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
