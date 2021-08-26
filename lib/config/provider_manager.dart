import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:wanandroid/view_model/theme_model.dart';

List<SingleChildWidget> providers = [];

///独立的model
List<SingleChildWidget> independentServices = [
  ChangeNotifierProvider(create: (context) => ThemeModel()),

];
