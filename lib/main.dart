import 'package:flutter/material.dart';
import 'profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Facebook Clone',
      home: const UserProfilePage(), // Keep this to show the UserProfilePage
    );
  }
}

// You can create a separate widget to display the image if needed
class ImageDisplayPage extends StatelessWidget {
  const ImageDisplayPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Display'),
      ),
      body: Center(
        child: Image.asset('assets/images/image.jpg'), // Ensure this path is correct
      ),
    );
  }
}
