import 'package:alpha/pages/develop/widgets/build_future.dart';
import 'package:alpha/pages/develop/widgets/decentralized.dart';
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
          return const SingleChildScrollView(
            child: Column(
              children: [
                BuildFutureWidget(),
                DecentralizedInfoWidget(),
                Footer(),
              ],
            ),
          );
        },
      ),
    );
  }
}
