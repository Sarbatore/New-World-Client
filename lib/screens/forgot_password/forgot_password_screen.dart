import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';

import 'components/body.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static String routeName = "/forgot_password";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tForgotPassword),
      ),
      body: Body(),
    );
  }
}
