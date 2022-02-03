import 'package:flutter/material.dart';
import 'package:test_water_drop_nav_bar/route.gr.dart';

class RightSideScreen extends StatelessWidget {
  const RightSideScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Middle Side Screen'),
            ElevatedButton(
              onPressed: () => const RightSideDetailRoute().show(context),
              child: const Text('To Detail Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
