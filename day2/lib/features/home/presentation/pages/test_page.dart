import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  int quantity = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TEST'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              padding: EdgeInsets.zero,
              icon: const Icon(Icons.remove_circle, size: 60),
              onPressed: () {
                setState(() {
                  quantity -= 1;
                });
              },
            ),
            const SizedBox(width: 20),
            Text(
              '${quantity}',
              style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(width: 20),
            IconButton(
              padding: EdgeInsets.zero,
              icon: const Icon(Icons.add_circle, size: 60),
              onPressed: () {
                // Instant apply
                // Single Page
                setState(() {
                  quantity += 1;
                });

                // go to CookingPage(amount: quantity)
              },
            ),
          ],
        ),
      ),
    );
  }
}
