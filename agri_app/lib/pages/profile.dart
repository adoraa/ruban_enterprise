import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 25, bottom: 15),
            child: CircleAvatar(
              radius: 62,
              backgroundColor: Theme.of(context).colorScheme.primary,
              child: const CircleAvatar(
                radius: 60,
                foregroundImage: AssetImage('assets/profile.png'),
              ),
            ),
          ),
          Center(
            child: Text(
              "Magdalene Ada",
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          Center(
            child: Text(
              "magdaleneada@gmail.com",
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
          const SizedBox(height: 25,),
          ListTile(
            title: const Text("+234  810 0000 000"),
            leading: const Icon(IconlyLight.call),
            onTap: () {},
          ),
          ListTile(
            title: const Text("Calabar, Cross-River"),
            leading: const Icon(IconlyLight.location),
            onTap: () {},
          ),
          ListTile(
            title: const Text("**********"),
            leading: const Icon(IconlyLight.lock),
            onTap: () {},
          ),
          ListTile(
            title: const Text("Logout"),
            leading: const Icon(IconlyLight.logout),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
