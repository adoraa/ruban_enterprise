import 'package:agri_app/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              children: [
                const Spacer(),
                //Image
                Image.asset(
                  'assets/onboarding.png',
                  width: 380,
                ),
                const Spacer(),
                Text(
                  "Welcome to RuBan",
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 25),
                  child: Text(
                      "Get fresh food produce from the comfort of your home.",
                  ),
                ),
                FilledButton.tonalIcon(
                  onPressed: (){
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const MyHomePage(title: 'Home',)));
                  },
                  icon: const Icon(IconlyLight.login),
                  label: const Text("Get Started"),
                ),
              ],
            ),
          ),
      ),
    );
  }
}
