import 'package:flutter/material.dart';

class JoinUs extends StatelessWidget {
  const JoinUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[600], // Set background color to grey 600
      padding: EdgeInsets.all(16), // Add some padding for all sides
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'JOIN THE ALPHA COMMUNITY',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.white, // Enhance text visibility on grey background
            ),
          ),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'EMAIL',
                border: OutlineInputBorder(),
                labelStyle: TextStyle(
                  color: Colors.white, // For better visibility
                ),
              ),
              style: TextStyle(
                  color: Colors.white), // Text color inside the text field
            ),
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              // Submit email action goes here
            },
            child: Text('SUBMIT'),
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.black, // Text color
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: Icon(Icons.discord,
                    color: Colors.white), // Example icon with color
                onPressed: () {
                  // Discord action goes here
                },
              ),
              IconButton(
                icon: Icon(Icons.close,
                    color: Colors.white), // Example icon with color
                onPressed: () {
                  // Close action goes here
                },
              ),
              IconButton(
                icon: Icon(Icons.send,
                    color: Colors.white), // Example icon with color
                onPressed: () {
                  // Send action goes here
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(body: const JoinUs()),
  ));
}
