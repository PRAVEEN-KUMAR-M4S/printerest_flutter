import 'package:flutter/material.dart';
import 'package:printerest_clone/models/feed_model.dart';

class CustomCard extends StatelessWidget {
  final FeedModel feed;
  const CustomCard({super.key, required this.feed});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(

      width: (size.width / 2) - 10,
 
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ClipRRect(borderRadius: BorderRadius.circular(12),child: Image.asset("assets/${feed.img}",fit: BoxFit.fill,)),
              IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz))
            ],
          ),
     
    );
  }
}
