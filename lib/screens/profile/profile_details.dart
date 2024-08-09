import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:printerest_clone/constants/data.dart';
import 'package:printerest_clone/screens/profile/user_details.dart';
import 'package:printerest_clone/screens/widgets/custom_row.dart';

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
             Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 18,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: const Text(
          'Your account',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(
                  width: 18,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Praveen",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    Text("View profile"),
                  ],
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const UserDetails()));
                  },
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    size: 18,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 18,
            ),
            const Text(
              'Settings',
              style: TextStyle(fontWeight: FontWeight.w300),
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              children: settings.map((e) => CustomRow(text: e)).toList(),
            ),
            const SizedBox(
              height: 18,
            ),
            const Text(
              'Login',
              style: TextStyle(fontWeight: FontWeight.w300),
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              children: login.map((e) => CustomRow(text: e)).toList(),
            ),
            TextButton(
                onPressed: () {},
                child: const Text(
                  "Log out",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}
