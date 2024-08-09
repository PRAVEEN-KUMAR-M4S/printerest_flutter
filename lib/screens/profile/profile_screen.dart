import 'package:flutter/material.dart';
import 'package:printerest_clone/screens/profile/profile_details.dart';
import 'package:printerest_clone/screens/widgets/custom_button.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const ProfileDetails()));
              },
              child: const CircleAvatar(
                radius: 15,
                backgroundColor: Colors.blueGrey,
                child: Center(
                    child: Text(
                  "P",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                )),
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search your Pins',
                      focusColor: Theme.of(context).colorScheme.secondary,
                      fillColor: Theme.of(context).colorScheme.secondary,
                      filled: true,
                      contentPadding: const EdgeInsets.all(5),
                      prefixIcon: const Icon(
                        Icons.search,
                      ),
                      prefixIconColor: Theme.of(context).colorScheme.primary,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                const Icon(
                  Icons.add,
                  weight: 80,
                  size: 40,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/save.png',
                    scale: 2,
                  ),
                  const Text(
                    "You haveen't saved any Pins...Yet",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                      "Save your favourite ideas so you can easily\n                 come back to them later"),
                  const SizedBox(
                    height: 10,
                  ),
                  const CustomButton(
                    txt: 'Explore Pins',
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
