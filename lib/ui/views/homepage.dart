import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import '../../core/viewmodels/base_model.dart';
import '../../core/viewmodels/homepage_model.dart';
import './base_view.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
// import 'package:prepley_flutter_app/ui/views/login.dart';
// import '../../core/models/user.dart';



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BaseView<HomeModel>(
      onModelReady: (model) {
        //! model.doSomething();
        //! Here we can set the ViewState to busy are and release it to Idle when we get are ready
        model.doSomething();
      },
      builder: (context, model, child) {
        return Scaffold(
          // appBar: AppBar(
          //   title: Text(
          //     "HomePage"
          //   ),
          // ),
          body: model.state == ViewState.Busy
            ? Center(
                child: SpinKitChasingDots(color: Color(0xfffd5f00)),
              )
            : Container(
            alignment: Alignment.center,
            child: Text(
              "HomePage",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 30,
              ),
            ),
          ),
        );
      }
    );
  }
}




