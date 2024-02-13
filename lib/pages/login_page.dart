import 'package:flutter/material.dart';
import 'package:grocery_app/components/my_button.dart';
import 'package:grocery_app/components/my_text_button.dart';
import 'package:grocery_app/components/my_text_field.dart';
import 'package:grocery_app/pages/catalog_page.dart';
import 'package:grocery_app/pages/sign_up_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordEditing = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(
              Icons.lock_open_rounded,
              size: 125,
              color: Theme.of(context).colorScheme.onBackground,
            ),
            const SizedBox(height: 30),
            //texts
            Text(
              'Welcome back you have been Missed',
              style: TextStyle(fontSize: 12, color: Theme.of(context).colorScheme.inversePrimary),
            ),
            const SizedBox(height: 30),
            //email
            MyTextField(hintText: 'Email', textEditingController: emailController, obscureText: false),
            //password
            MyTextField(hintText: 'Password', textEditingController: passwordEditing, obscureText: true),
            //Forgot password
            Padding(
              padding: const EdgeInsets.only(right: 25.0, top: 10, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Forgot Password',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                  ),
                ],
              ),
            ),
            //Buttonsx
            MyButton(
              child: Text(
                'Login',
                style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary, fontSize: 15, fontWeight: FontWeight.bold),
              ),
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const CatalogPage())),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'New Here? ',
                  style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),
                ),
                MyTextButton(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpPage()));
                    },
                    text: 'Register')
              ],
            )
          ],
        ),
      ),
    );
  }
}
