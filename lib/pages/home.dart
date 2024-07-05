import 'package:alpha/widgets/tradealpha.dart';
import 'package:flutter/material.dart';
import 'package:alpha/widgets/drawer.dart';
import '../widgets/appbar.dart';
import '../widgets/footer.dart';
import '../widgets/hero.dart';
import '../widgets/safeguard.dart';
import '../widgets/snapshot.dart';
import '../widgets/tradealpha.dart';
import '../widgets/joinus.dart';

class Home extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  late final PageController _pageController;

  Home({super.key}) {
    _pageController = PageController(initialPage: 500, viewportFraction: 0.33);
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final statusBarHeight = MediaQuery.of(context).padding.top;
    final appBarHeight = kToolbarHeight;
    final firstFoldHeight = screenHeight - statusBarHeight - appBarHeight;

    return Scaffold(
      key: _scaffoldKey,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: CustomAppBar(scaffoldKey: _scaffoldKey),
      ),
      drawer: const CustomDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeroWidget(
              pageController: _pageController,
              firstFoldHeight: firstFoldHeight,
            ),
            Safeguard(),
            Snapshot(),
            TradeAlpha(),
            JoinUs(),
            const Footer(),
          ],
        ),
      ),
    );
  }
}
