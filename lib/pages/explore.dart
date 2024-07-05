import 'package:flutter/material.dart';
import 'package:alpha/widgets/drawer.dart';
import '../widgets/appbar.dart';
import '../widgets/footer.dart';

class Explore extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  Explore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: CustomAppBar(scaffoldKey: _scaffoldKey),
      ),
      drawer: const CustomDrawer(),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: constraints.maxHeight,
              ),
              child: IntrinsicHeight(
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        // Main content goes here
                        children: const [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('EXPLORE', style: TextStyle(fontSize: 24)),
                          ),
                          // Add more content here as needed
                        ],
                      ),
                    ),
                    const Footer(), // Footer will be pushed to the bottom
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

