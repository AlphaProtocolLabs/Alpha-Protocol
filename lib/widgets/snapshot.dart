import 'package:flutter/material.dart';

class Snapshot extends StatelessWidget {
  const Snapshot({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    bool isDesktop = screenSize.width > 600;
    double padding = 20.0; // Standard padding for the sides
    double verticalSpacing =
        screenSize.height * 0.01; // Reduced vertical spacing

    return SizedBox(
      height: screenSize.height,
      child: isDesktop
          ? Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex: 4,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(
                        padding, verticalSpacing, padding, verticalSpacing),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'NETWORK SNAPSHOT',
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: verticalSpacing),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            foregroundColor: Colors.white,
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 32, vertical: 16),
                            child: Text('BECOME A NODE'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Padding(
                    padding: EdgeInsets.all(padding),
                    child: snapshotData(context),
                  ),
                ),
              ],
            )
          : Padding(
              padding: EdgeInsets.all(padding),
              child: Column(
                mainAxisAlignment:
                    MainAxisAlignment.spaceEvenly, // Evenly distribute space
                children: [
                  const Text(
                    'NETWORK SNAPSHOT',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  snapshotData(context),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                    ),
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                      child: Text('BECOME A NODE'),
                    ),
                  ),
                ],
              ),
            ),
    );
  }

  Widget snapshotData(BuildContext context) {
    List<Map<String, String>> data = [
      {
        'title': 'TOTAL NETWORK NODES',
        'value': '000,011',
      },
      {
        'title': 'NETWORK BANDWIDTH',
        'value': '11.11 GB/S',
      },
      {
        'title': 'CLOUD DATABASE',
        'value': '5,000 TB',
      },
    ];

    return Column(
      mainAxisAlignment:
          MainAxisAlignment.spaceAround, // Distribute spacing evenly
      children: data.map((item) {
        return Padding(
          padding: const EdgeInsets.symmetric(
              vertical: 10.0), // Adjusted padding between elements
          child: Column(
            children: [
              Text(
                item['title']!,
                style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 5), // Reduced space between title and value
              Text(
                item['value']!,
                style: const TextStyle(
                  fontSize: 36.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: Scaffold(body: Snapshot()),
  ));
}
