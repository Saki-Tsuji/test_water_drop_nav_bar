import 'package:flutter/material.dart';

class MiddleSideScreen extends StatelessWidget {
  const MiddleSideScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text('Middle Side Screen'),
      ),
    );
  }
}
