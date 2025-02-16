import 'package:flutter/material.dart';

class SecretsPage extends StatelessWidget {
  const SecretsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: TextField(),
      appBar: AppBar(
        title: Text('Talk to a Doctor'),
      ),
      body: Column(
        children: [
          Container(
            height: 80,
            width: 40,
            decoration: BoxDecoration(color: Colors.pinkAccent),
          )
        ],
      ),
    );
  }
}
