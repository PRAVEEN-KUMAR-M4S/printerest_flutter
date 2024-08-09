
import 'package:flutter/material.dart';
import 'package:printerest_clone/screens/widgets/custom_buttongrey.dart';

class SavedTab extends StatelessWidget {
  const SavedTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Text("You haven't saved any ideas yet",style: TextStyle(fontSize: 18,color: Colors.grey),),
      SizedBox(height: 10,),
      CustomButtonGrey(text: 'Find ideas')
      ],
    );
  }
}