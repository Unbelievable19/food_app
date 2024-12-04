import 'package:flutter/material.dart';
import 'package:food_app/components/custom_button.dart';
import 'package:food_app/components/custom_textfield.dart';
import 'package:food_app/services/auth/auth_service.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;

  const LoginPage({super.key, this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  /// login method
  void login() async {
    final _authService = AuthService();

    try {
      await _authService.signInWithEmailPassword(
          emailController.text, passwordController.text);
    }
    catch (e) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(title: Text(e.toString())));
    }
  }

  void forgotPw() {
    showDialog(
        context: context,
        builder: (context) =>
        const AlertDialog(title: Text("Пароль не совпадает")));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme
          .of(context)
          .colorScheme
          .background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            /// logo
            Icon(
              Icons.lock_open_rounded,
              size: 100,
              color: Theme
                  .of(context)
                  .colorScheme
                  .inversePrimary,
            ),

            const SizedBox(height: 25),

            /// message
            Text(
              "щас бы мороженку похавать",
              style: TextStyle(
                fontSize: 16,
                color: Theme
                    .of(context)
                    .colorScheme
                    .inversePrimary,
              ),
            ),

            const SizedBox(height: 25),

            /// email textfield
            CustomTextField(
              controller: emailController,
              hintText: "Email",
              obscureText: false,
            ),

            const SizedBox(height: 25),

            /// password textfield
            CustomTextField(
              controller: passwordController,
              hintText: "Password",
              obscureText: true,
            ),

            const SizedBox(height: 25),

            /// sign in button
            CustomButton(
              text: "Sign in",
              onTap: login,
            ),

            const SizedBox(height: 25),

            /// not member? -> register now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Not a member?",
                  style: TextStyle(
                      color: Theme
                          .of(context)
                          .colorScheme
                          .inversePrimary),
                ),
                const SizedBox(width: 4),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    "Register now",
                    style: TextStyle(
                        color: Theme
                            .of(context)
                            .colorScheme
                            .inversePrimary,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
