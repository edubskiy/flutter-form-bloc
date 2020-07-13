import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/src/blocs/bloc.dart';

class Provider extends InheritedWidget {
  final bloc = Bloc();

  Provider({Key key, Widget child}) : super(key: key, child: child);

  @override
  bool updateShouldNotify(InheritedWidget _) {
    return true;
  }

  static Bloc of(BuildContext context) {
    // TODO inheritFromWidgetOfExactType replace with dependOnInheritedWidgetOfExactType
    return (context.inheritFromWidgetOfExactType(Provider) as Provider).bloc;
  }
}
