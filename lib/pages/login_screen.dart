import 'package:eccommerce/pages/navigation_menu.dart';
import 'package:eccommerce/providers/auth_provider.dart';
import 'package:eccommerce/utils/constants/app_sizes.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = GlobalKey<FormState>();
    TextEditingController emailController = TextEditingController();
    final TextEditingController passwordControler = TextEditingController();

    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defualtSpace),
          child: Form(
              key: formKey,
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
                    controller: emailController,
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.mail),
                        hintText: "name@mail.com",
                        labelText: "Email"),
                  ),
                  const SizedBox(
                    height: AppSizes.spaceBetweenItems,
                  ),
                  TextFormField(
                    controller: passwordControler,
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
                      onPressed: () async {
                        // formKey is a hook to the form for which the form key is assigned to
                        if (formKey.currentState?.validate() ?? false) {
                          try {
                            await ref.read(authServiceProvider).signIn(
                                emailController.text, passwordControler.text);

                            Navigator.pushNamed(context, "/");
                          } catch (e) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text("Error Logging In"),
                              ),
                            );
                          }
                        }
                      },
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
