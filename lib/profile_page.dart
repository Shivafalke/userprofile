import 'package:flutter/material.dart';

class UserProfilePage extends StatefulWidget {
  const UserProfilePage({Key? key}) : super(key: key);

  @override
  _UserProfilePageState createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  String? _selectedGender; // Variable to hold the selected gender

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Facebook Profile'),
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Profile Picture Section
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/images/image.jpg'), // Ensure this path is correct
                // You can use a placeholder in case the image is not found
                onBackgroundImageError: (exception, stackTrace) {
                  // Handle error, e.g., log it or display a default image
                  print('Image loading error: $exception');
                },
              ),
            ),
            // Name Section
            Text(
              'Shiva Falke', // Change to user name dynamically if needed
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            // Location Section
            Text(
              'Pune, India', // Example location
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 20),

            // Email, Password, Gender Section
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Email
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email),
                    ),
                  ),
                  SizedBox(height: 10),

                  // Password
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.lock),
                    ),
                  ),
                  SizedBox(height: 10),

                  // Gender Selection
                  Text(
                    'Gender:',
                    style: TextStyle(fontSize: 16),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Radio<String>(
                        value: 'male',
                        groupValue: _selectedGender,
                        onChanged: (String? value) {
                          setState(() {
                            _selectedGender = value; // Update the selected gender
                          });
                        },
                      ),
                      Text('Male'),
                      SizedBox(width: 20),
                      Radio<String>(
                        value: 'female',
                        groupValue: _selectedGender,
                        onChanged: (String? value) {
                          setState(() {
                            _selectedGender = value; // Update the selected gender
                          });
                        },
                      ),
                      Text('Female'),
                    ],
                  ),
                  SizedBox(height: 10),
                  // Display selected gender
                  Text(
                    'Selected Gender: ${_selectedGender ?? 'None'}',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

            // Friends Section
            Divider(thickness: 1),
            Text(
              'Friends',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  FriendTile(name: 'Vishvajeet', imageUrl: 'assets/images/image.jpg'), // Ensure this path is correct
                  FriendTile(name: 'Nilesh Oulkar', imageUrl: 'assets/images/image.jpg'),

                   FriendTile(name: 'vaibhav', imageUrl: 'assets/images/image.jpg'),
                    // Ensure this path is correct
                  FriendTile(name: 'shivam', imageUrl: 'assets/images/image.jpg'),

                   FriendTile(name: 'ajay', imageUrl: 'assets/images/image.jpg'), // Ensure this path is correct
                  FriendTile(name: 'prajwal', imageUrl: 'assets/images/image.jpg'),

                   FriendTile(name: 'raunak', imageUrl: 'assets/images/image.jpg'), // Ensure this path is correct
                  FriendTile(name: 'shantanu', imageUrl: 'assets/images/image.jpg'),
                  // Add more FriendTiles as needed
                  // Add more FriendTiles as needed
                  // Add more FriendTiles as needed
                  // Add more FriendTiles as needed
                ],
              ),
            ),
            SizedBox(height: 20),

            // Photos Section
            Divider(thickness: 1),
            Text(
              'Photos',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 200,
              child: GridView.count(
                crossAxisCount: 3,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  Image.asset('assets/images/image.jpg'), // Ensure this path is correct
                  // Add more images as needed
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// FriendTile Widget for rendering friend avatars and names
class FriendTile extends StatelessWidget {
  final String name;
  final String imageUrl;

  const FriendTile({Key? key, required this.name, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(imageUrl),
          ),
          SizedBox(height: 5),
          Text(name),
        ],
      ),
    );
  }
}
