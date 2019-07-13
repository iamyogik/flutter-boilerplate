import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './http_service.dart';
import './localstorage_service.dart';
import '../../locator.dart';

class Api {
  
  NetworkService networkService = locator<NetworkService>();
  LocalStorageService storageService = locator<LocalStorageService>();


  //! Make requests to the server using the networkService like given below.
  //! Use the storageService to save data to localstorage. Make sure to create functions inside localstorage_service.dart file inorder to do so.

  // dynamic signupUsingEmail(String name, String email, String password) async {
  //     var response = await networkService.post("/signup", body: {
  //       "type": "email",
  //       "name": name,
  //       "email": email,
  //       "password": password
  //     });

  //     if (response['success']) {

  //     }
  //     return response;
  //   }
  // }


}
