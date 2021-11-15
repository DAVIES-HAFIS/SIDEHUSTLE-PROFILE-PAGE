

import 'package:flutter/material.dart';
import 'package:sidehustle_profile_app/helper_functions/colors.dart';
import 'package:sidehustle_profile_app/helper_functions/utils.dart';

class LoginPage extends StatefulWidget {

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _password = TextEditingController();
  TextEditingController _email = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void validate(BuildContext context) {
    if (_formKey.currentState.validate()) {
      successAlert(
        context,
        "Login Successful",
        "Welcome to Side Hustle!",
            ()  {
        },
      );
    } else {
      errorAlert(context, "OOPS",
          "Enter Login Credentials, your email and password is required!");
    }

  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: GestureDetector(
          onTap: () => dismissKeyBoard(context),
          child: SafeArea(
            child: Container(
              height: getScreenHeight(context)*1,
              width: getScreenWidth(context)*1,
                padding: EdgeInsets.all(30),
              child: SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child:  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      Text(
                        'Welcome Back!',
                        style: TextStyle(
                          color: Color(0xff181725),
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      addVerticalSpacing(20),
                      produceImage("assets/images/todo_logo.png", 200, 250),
                      addVerticalSpacing(30),
                      EmailTextField(
                        obscure: false,
                        emailTEC: _email,
                      ),
                      addVerticalSpacing(20),
                      PasswordTextField(
                        passwordTEC: _password,
                      ),
                      addVerticalSpacing(
                       15
                      ),
                      GestureDetector(
                        child: ForgotPassword(
                          textColor: Colors.blue,
                        ),
                        onTap: () {

                        },
                      ),
                      addVerticalSpacing(20),
                      GestureDetector(
                        child: AppButton(
                          contentColor: AppColors.White,
                          buttonContent: 'Login',
                        ),
                        onTap: () => validate(context),
                        // show  snackbar to validate..
                      ),
                      addVerticalSpacing(
                        getScreenHeight(context) * 0.017857,
                      ),
                      GestureDetector(
                        child: Center(
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Don’t have an account ?',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey),
                                ),
                                TextSpan(
                                  text: ' Sign up',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue),
                                ),
                              ],
                            ),
                          ),
                        ),
                        onTap: () {

                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),

    );
  }
}
