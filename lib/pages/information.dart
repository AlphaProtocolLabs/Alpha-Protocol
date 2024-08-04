import 'package:alpha/widgets/fix_together.dart';
import 'package:alpha/widgets/internet_broken.dart';
import 'package:flutter/material.dart';
import 'package:alpha/widgets/drawer.dart';
import '../widgets/appbar.dart';
import '../widgets/footer.dart';

class Information extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  Information({super.key});

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
          return const SingleChildScrollView(
            child: Column(
              children: [
                InternetBrokenWidget(),
                FixTogetherWidget(),
                Footer(),
              ],
            ),
          );
        },
      ),
    );
  }
}
