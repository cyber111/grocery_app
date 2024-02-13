import 'package:flutter/material.dart';
import 'package:grocery_app/pages/login_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 60.0, right: 12, bottom: 12, left: 12),
        child: Center(
          child: Column(
            children: [
              //logo
              Icon(
                Icons.local_grocery_store_outlined,
                size: 100,
                color: Theme.of(context).colorScheme.onBackground,
              ),
              const SizedBox(height: 30),
              //message
              Text(
                'Fresh groceries at your doorstep..',
                style: TextStyle(color: Theme.of(context).colorScheme.onSecondary, fontWeight: FontWeight.bold, fontSize: 60),
              ),
              const SizedBox(height: 30),
              //start
              IconButton(
                  onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage(),)),
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: Theme.of(context).colorScheme.onSecondary,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
