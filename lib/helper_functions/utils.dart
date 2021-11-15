import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import 'colors.dart';


double getScreenHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

double getScreenWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}


Widget produceImage(String imgPath, double imgWidth, double imgHeight,
    [BoxFit fit = BoxFit.contain]) {
  return Image.asset(
    imgPath,
    fit: fit,
    width: imgWidth,
    height: imgHeight,
  );
}


Widget addVerticalSpacing(double height) {
  return SizedBox(height: height);
}

Widget addHorizontalSpacing(double width) {
  return SizedBox(width: width);
}

void dismissKeyBoard(BuildContext context) {
  FocusScope.of(context).requestFocus(new FocusNode());
}

var alertStyle = AlertStyle(
    animationType: AnimationType.fromTop,
    isCloseButton: true,
    isOverlayTapDismiss: true,
    descStyle: TextStyle(
      fontWeight: FontWeight.normal,
      color: Color.fromRGBO(51, 51, 51, 0.7),
      fontSize: 12,
    ),
    animationDuration: Duration(milliseconds: 300),
    alertBorder: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12.0),
      side: BorderSide(
        color: Colors.grey,
      ),
    ),
    titleStyle: TextStyle(
        fontSize: 21, fontWeight: FontWeight.bold, color: Colors.black),
    constraints: BoxConstraints.expand(width: 300),
    overlayColor: Color(0x55000000),
    alertElevation: 0,
    alertAlignment: Alignment.center);

void successAlert(
    BuildContext context, String title, String msg, Function nextAction) {
  Alert(
    context: context,
    title: title,
    style: alertStyle,
    desc: msg,
    image: Image.asset("assets/images/success.png"),
    buttons: [
      DialogButton(
        child: Text(
          "Okay",
          style: TextStyle(color: Colors.white, fontSize: 12),
        ),
        onPressed: () {
          Navigator.pop(context);
          nextAction();
        },
        color: AppColors.lightDeepGreen,
        radius: BorderRadius.circular(12.0),
      ),
    ],
  ).show();
}

void errorAlert(BuildContext context, String title, String msg) {
  Alert(
    context: context,
    title: title,
    desc: msg,
    style: alertStyle,
    image: Image.asset("assets/images/failure.png"),
    buttons: [
      DialogButton(
        child: Text(
          "Cancel",
          style: TextStyle(color: Colors.white, fontSize: 12),
        ),
        onPressed: () => Navigator.pop(context),
        color: AppColors.Red,
        radius: BorderRadius.circular(12.0),
      ),
    ],
  ).show();
}


class PasswordTextField extends StatefulWidget {
  PasswordTextField({
    this.passwordTEC,
  });

  TextEditingController passwordTEC;
  @override
  _PasswordTextFieldState createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // keyboardType: TextInputType.number,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      obscureText: obscureText,
      controller: widget.passwordTEC,
      decoration: InputDecoration(
        hintText: 'Confirm Password',
        hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
        // contentPadding: EdgeInsets.symmetric(
        //     horizontal: getScreenWidth(context) * 0.04468,
        //     vertical: getScreenHeight(context) * 0.0212),
        suffixIcon: InkWell(
          onTap: _passwordVisibilty,
          child: obscureText ? Icon(Icons.visibility_off, color: Colors.blueGrey,) : Icon(Icons.visibility, color: Colors.indigo,),
        ),
        focusColor: AppColors.lightGreen,
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.indigo),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.indigo),
        ),
      ),
      validator: (value) {
        if (value.length < 4) {
          return 'password should be a minimum of 4 characters';
        }
        return null;
      },
      textInputAction: TextInputAction.next,
    );
  }

  void _passwordVisibilty() {
    setState(() {
      obscureText = !obscureText;
    });
  }
}


class ForgotPassword extends StatelessWidget {
  ForgotPassword({this.textColor});

  Color textColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          'Forgot Password?',
          style: TextStyle(color: this.textColor),
          textAlign: TextAlign.right,
        ),
      ],
    );
  }
}

class EmailTextField extends StatefulWidget {
  EmailTextField({
    this.emailTEC,
    this.obscure,
  });

  final TextEditingController emailTEC;
  final bool obscure;
  @override
  _EmailTextFieldState createState() => _EmailTextFieldState();
}

class _EmailTextFieldState extends State<EmailTextField> {
  // bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      obscureText: widget.obscure,
      controller: widget.emailTEC,
      decoration: InputDecoration(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.indigo),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.indigo),
        ),
        hintText: 'Enter your email',
        hintStyle: TextStyle(color: Colors.grey, fontSize: 16),


        // contentPadding: EdgeInsets.symmetric(
        //     horizontal: getScreenWidth(context) * 0.04468,
        //     vertical: getScreenHeight(context) * 0.0212),
      ),
      validator: EmailValidator(errorText: 'invalid email address'),
      textInputAction: TextInputAction.next,
    );
  }
}


class AppButton extends StatelessWidget {
  AppButton({this.buttonColor, this.buttonContent, this.contentColor, this.contentSize});
  final String buttonContent;
  final Color buttonColor;
  final Color contentColor;
  final double contentSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: getScreenWidth(context) * 0.9146,
      height: getScreenHeight(context) * 0.0738,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Text(
        this.buttonContent,
        style: TextStyle(
            fontSize: this.contentSize,
            color: this.contentColor,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}