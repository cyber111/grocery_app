import 'package:flutter/material.dart';
import 'package:grocery_app/components/my_button.dart';
import 'package:grocery_app/components/my_text_button.dart';
import 'package:grocery_app/components/my_text_field.dart';


class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordEditing = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 100),
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
              'Let\'s create a account for you,',
              style: TextStyle(fontSize: 12, color: Theme.of(context).colorScheme.inversePrimary),
            ),
            const SizedBox(height: 30),
            //email
            MyTextField(hintText: 'Email', textEditingController: emailController, obscureText: false),
            //password
            MyTextField(hintText: 'Password', textEditingController: passwordEditing, obscureText: true),
            //password
            MyTextField(hintText: 'Confirm Password', textEditingController: passwordEditing, obscureText: true),
            //Buttons
            MyButton(
              child: Text(
                'Sign Up',
                style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary, fontSize: 15, fontWeight: FontWeight.bold),
              ),
              onTap: () {},
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already a Member? ',
                  style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),
                ),
                MyTextButton(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    text: 'Login')
              ],
            )
          ],
        ),
      ),
    );
  }
}
