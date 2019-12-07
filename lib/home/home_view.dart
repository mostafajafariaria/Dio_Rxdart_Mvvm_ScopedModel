import 'package:flutter/material.dart';
import 'package:mvvm_soped_rxdart/views/user_widget.dart';
import 'package:scoped_model/scoped_model.dart';

import 'home_view_model.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  HomeViewModel homeViewModel;

  @override
  void initState() {
    homeViewModel = HomeViewModel();
    homeViewModel.getUser();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ScopedModel<HomeViewModel>(
      model: homeViewModel,
      child: Container(
        child: UserWidget(subject: homeViewModel.subject,),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.0, 0.7],
            colors: [
              Color(0xFFF12711),
              Color(0xFFf5af19),
            ],
          ),
        ),
      ),
    ));
  }

  @override
  void dispose() {
    homeViewModel.dispose();
    super.dispose();
  }
}
