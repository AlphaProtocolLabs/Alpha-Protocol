import 'package:flutter/material.dart';

class JoinUs extends StatelessWidget {
  const JoinUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[600], // Set background color to grey 600
      padding: const EdgeInsets.all(16), // Add some padding for all sides
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'JOIN THE ALPHA COMMUNITY',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.white, // Enhance text visibility on grey background
            ),
          ),
          const SizedBox(height: 16),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.0),
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
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              // Submit email action goes here
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.black, // Text color
            ),
            child: const Text('SUBMIT'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: const Icon(Icons.discord,
                    color: Colors.white), // Example icon with color
                onPressed: () {
                  // Discord action goes here
                },
              ),
              IconButton(
                icon: const Icon(Icons.close,
                    color: Colors.white), // Example icon with color
                onPressed: () {
                  // Close action goes here
                },
              ),
              IconButton(
                icon: const Icon(Icons.send,
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
  runApp(const MaterialApp(
    home: Scaffold(body: JoinUs()),
  ));
}
