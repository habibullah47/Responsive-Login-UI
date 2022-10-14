import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_signin_ui/components/rounded_button.dart';
import 'package:login_signin_ui/screen/components/background.dart';
import 'package:login_signin_ui/constants.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Welcome to Amar Notes',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          SvgPicture.asset(
            "assets/icons/chat.svg",
            height: size.height * 0.45,
          ),
          RoundedButton(
            press: () {},
            text: 'LOGIN',
          ),
          RoundedButton(
            text: 'REGISTER',
            color: kPrimaryLightColor,
            textcolor: Colors.black,
            press: () {},
          ),
        ],
      ),
    );
  }
}
