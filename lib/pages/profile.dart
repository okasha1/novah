import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Column(
        children: [
          Text(
            'First text that we will use on here',
          ),
          Text(
              'Another text that will be used for the content of the header and the whole body.')
        ],
      ),
    );
  }
}
