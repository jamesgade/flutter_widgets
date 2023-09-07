import 'package:flutter/material.dart';

class AdaptiveWidgets extends StatelessWidget {
  const AdaptiveWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Adaptive Widgets'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // normal
            Slider(
              value: 1,
              onChanged: (double newValue) {},
            ),
            // adaptive
            Slider.adaptive(
              value: 1,
              onChanged: (double newValue) {},
            ),
            SwitchListTile(
              value: true,
              onChanged: (bool newValue) {},
              title: const Text(
                'Normal SiwtchListTile',
              ),
            ),
            SwitchListTile.adaptive(
              value: true,
              onChanged: (bool newValue) {},
              title: const Text(
                'Adapttive SwitchListTile',
              ),
            ),
            Row(
              children: [
                Switch(value: true, onChanged: (bool newValue) {}),
                Switch.adaptive(value: true, onChanged: (bool newValue) {}),
              ],
            ),
            Row(
              children: [
                const Icon(Icons.share),
                Icon(Icons.adaptive.share),
              ],
            ),
            const Row(
              children: [
                CircularProgressIndicator(),
                CircularProgressIndicator.adaptive()
              ],
            ),
          ],
        ),
      ),
    );
  }
}
