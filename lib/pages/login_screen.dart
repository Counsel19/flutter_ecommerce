import 'package:eccommerce/utils/constants/app_sizes.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defualtSpace),
          child: Form(
              child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                "Login",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: AppSizes.spaceBetweenItems,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.mail),
                    hintText: "name@mail.com",
                    labelText: "Email"),
              ),
              const SizedBox(
                height: AppSizes.spaceBetweenItems,
              ),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.key),
                    hintText: "**********",
                    labelText: "Password"),
              ),
              const SizedBox(
                height: AppSizes.spaceBetweenSections,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Login"),
                ),
              ),
              const SizedBox(
                height: AppSizes.spaceBetweenItems,
              ),
              RichText(
                  text: TextSpan(
                      text: "No Account? ",
                      style: const TextStyle(color: Colors.grey),
                      children: [
                    TextSpan(
                        text: "Sign Up ",
                        style: const TextStyle(
                          color: Colors.black,
                          decoration: TextDecoration.underline,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.pushNamed(context, "/sign-up");
                          }),
                    const TextSpan(text: "for free"),
                  ]))
            ],
          )),
        ),
      )),
    );
  }
}
