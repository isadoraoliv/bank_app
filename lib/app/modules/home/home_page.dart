import 'package:bank_app/app/modules/home/widgets/bottom_bar.dart';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final List<ChildModule> modules;

  const HomePage({
    Key key,
    @required this.modules,
  })  : assert(modules.length == 5),
        super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  var pageController = PageController();
  ReactionDisposer _disposer;

  @override
  void initState() {
    _disposer =
        reaction((_) => controller.currentPage, pageController.jumpToPage);
    print(controller.currentPage);
    super.initState();
  }

  @override
  void dispose() {
    _disposer.call();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: widget.modules.map((i) => RouterOutlet(module: i)).toList(),
      ),
      bottomNavigationBar: BottomBarWidget(),
    );
  }
}
