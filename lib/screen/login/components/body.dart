import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_signin_ui/components/rounded_button.dart';
import 'package:login_signin_ui/components/rounded_input_field.dart';
import 'package:login_signin_ui/constants.dart';
import 'package:login_signin_ui/screen/login/components/background.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'LOGIN',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: size.height * 0.03),
          SvgPicture.asset(
            'assets/icons/login.svg',
            height: size.height * 0.35,
          ),
          SizedBox(height: size.height * 0.03),
          RoundedInputField(
            hintText: 'Your Email',
            icon: const Icon(Icons.person, color: kPrimaryColor),
            onChanged: (value) {},
            obscureText: false,
          ),
          RoundedInputField(
            hintText: 'Your Password',
            icon: const Icon(Icons.lock, color: kPrimaryColor),
            suffixIcon: const Icon(Icons.visibility, color: kPrimaryColor),
            onChanged: (Value) {},
            obscureText: true,
          ),
          RoundedButton(text: 'LOGIN', press: () {}),
          SizedBox(height: size.height * 0.03),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Don\'t have an Account?'),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(color: kPrimaryColor),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
