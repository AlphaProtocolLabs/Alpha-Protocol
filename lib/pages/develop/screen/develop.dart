import 'package:flutter/material.dart';
import 'package:alpha/widgets/drawer.dart';
import '../../../widgets/appbar.dart';
import '../../../widgets/footer.dart';

class Develop extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  Develop({super.key});

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
              child: const IntrinsicHeight(
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        // Main content goes here
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child:
                                Text('DEVELOP', style: TextStyle(fontSize: 24)),
                          ),
                          // Add more content here as needed
                        ],
                      ),
                    ),
                    Footer(), // Footer will be pushed to the bottom
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
