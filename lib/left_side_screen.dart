import 'package:flutter/material.dart';

class LeftSideScreen extends StatelessWidget {
  const LeftSideScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text('Left Side Screen'),
      ),
    );
  }
}
