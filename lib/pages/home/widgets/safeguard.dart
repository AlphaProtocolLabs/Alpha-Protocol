import 'package:flutter/material.dart';

class Safeguard extends StatelessWidget {
  const Safeguard({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDesktop = MediaQuery.of(context).size.width > 600;

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          const Text(
            'Safeguard your Connection',
            style: TextStyle(
              color: Colors.black,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          if (isDesktop)
            ConstrainedBox(
              constraints:
                  BoxConstraints(maxWidth: MediaQuery.of(context).size.width),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: infoContainers(isDesktop: isDesktop),
              ),
            )
          else
            ...infoContainers(isDesktop: isDesktop),
        ],
      ),
    );
  }

  List<Widget> infoContainers({required bool isDesktop}) {
    List<Map<String, String>> data = [
      {
        'title':
            'Download and Install the Alpha Protocol Network (APN) to your Device',
        'buttonText': 'Learn More',
      },
      {
        'title':
            'Configure your Connection\nHost your own Private Network or Connect to Alpha Protocols Decentralized Network',
        'buttonText': 'Learn More',
      },
      {
        'title':
            'Secure your Systems and Earn Rewards for your Contributions to the Network\nENJOY!',
        'buttonText': 'Learn More',
      },
    ];

    if (isDesktop) {
      return data.map((item) {
        return Flexible(
          child: InfoContainer(item: item),
        );
      }).toList();
    } else {
      return data.map((item) {
        return InfoContainer(item: item);
      }).toList();
    }
  }
}

class InfoContainer extends StatelessWidget {
  final Map<String, String> item;

  const InfoContainer({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[600],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            item['title']!,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 12),
          ElevatedButton(
            onPressed: () {
              // Button press handler
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.grey[450],
            ),
            child: Text(item['buttonText']!),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(backgroundColor: Colors.grey[600], body: const Safeguard()),
  ));
}
