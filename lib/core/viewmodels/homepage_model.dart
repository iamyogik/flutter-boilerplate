import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../services/api.dart';
import '../../locator.dart';
import './base_model.dart';


class HomeModel extends BaseModel {

  Api _api = locator<Api>();

  void doSomething() async{
    setViewState(ViewState.Busy);

    await Future.delayed(Duration(seconds: 3));

    //! Call _api.someMethod and get the response

    setViewState(ViewState.Idle);
  }





  //! Getter and Setter with notifyListeners();

  // String _something = "something";

  // String get something => _something;

  // void setSomething(String s) {
  //   _something = s;
  //   notifyListeners();
  // }





}

