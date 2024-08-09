import 'package:flutter/material.dart';
import 'package:printerest_clone/screens/profile/tabs/created_tab.dart';
import 'package:printerest_clone/screens/profile/tabs/saved_tab.dart';
import 'package:printerest_clone/screens/widgets/custom_buttongrey.dart';

class UserDetails extends StatelessWidget {
  const UserDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.share,
                size: 18,
                weight: 10,
              ),
            )
          ],
          backgroundColor: Colors.transparent,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 18,
              weight: 10,
            ),
          ),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundColor: Theme.of(context).colorScheme.primary,
                child: const Text(
                  "P",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 48),
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              const Text(
                "Praveen",
                style: TextStyle(fontSize: 42, fontWeight: FontWeight.bold),
              ),
              const Text(
                "praveen@1234",
                style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w300),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text("0 followers . 0 following"),
              const SizedBox(
                height: 20,
              ),
              const CustomButtonGrey(text: "Edit profile"),
              const Center(
                child: IntrinsicWidth(
                  child:  TabBar(
                    dividerColor: Colors.transparent,
                    labelColor: Colors.white, // Selected tab label color
                   
                    indicatorColor: Colors.white, // Set indicator color to white
                    indicatorWeight: 5.0, // Increase the thickness of the indicator
                    indicatorSize: TabBarIndicatorSize.label,
                    tabs: [
                      Tab(text: "Created"),
                      Tab(text: "Saved"),
                    ],
                  ),
                ),
              ),
              const Expanded(
                child: TabBarView(
                  children: [
                   CreatedTab(),
                  SavedTab(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
