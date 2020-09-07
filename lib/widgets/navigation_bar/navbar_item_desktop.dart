import 'package:caribbean_secrets_ecommerce/models/navbar_item_model.dart';
import 'package:flutter/material.dart';
import 'package:provider_architecture/provider_architecture.dart';
import 'package:stacked/stacked.dart';

class NavBarItemTabletDesktop extends ViewModelWidget<NavBarItemModel> {
  final NavBarItemModel model;
  NavBarItemTabletDesktop({this.model});

  @override
  Widget build(BuildContext context, NavBarItemModel model) {
    return Text(
      model.title,
      style: TextStyle(
          fontSize: 18, color: Colors.white, fontWeight: FontWeight.w100),
    );
  }
}
