import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:printerest_clone/constants/data.dart';
import 'package:printerest_clone/screens/widgets/custom_card.dart';

class FeedsScreen extends StatelessWidget {
  const FeedsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 20,
        ),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "All",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 5,
                  width: 20,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40)),
                ),
                const SizedBox(height: 10,)
              ],
            ),
            Expanded(
                child: MasonryGridView.builder(
                    itemCount: feeds.length,
                    gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                    itemBuilder: (context, index) {
                      final item = feeds[index];
                      return Padding(
                        padding: const EdgeInsets.only(top: 5,left: 5,right: 5),
                        child: CustomCard(feed: item),
                      );
                    }))
          ],
        ),
      ),
    );
  }
}
