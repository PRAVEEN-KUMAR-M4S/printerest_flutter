import 'package:flutter/cupertino.dart';
import 'package:printerest_clone/screens/widgets/custom_button.dart';

class CreatedTab extends StatelessWidget {
  const CreatedTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Text("Inspire with a Pin",style: TextStyle(fontSize: 18),),
      SizedBox(height: 10,),
      CustomButton(txt: 'Create')
      ],
    );
  }
}