import 'package:flutter/material.dart';
import 'package:helloworld/util/bubble_stories.dart';
import 'package:helloworld/util/user_post.dart';

class UserHome extends StatelessWidget {
  final List people = ['charles', 'obama', 'modi.in', 'rahul.in', 'biden.usa'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Instagram',
              style: TextStyle(color: Colors.black),
            ),
            Icon(Icons.add),
            Padding(
              padding: const EdgeInsets.all(24.0),
            ),
            Icon(Icons.favorite),
            Icon(Icons.share),
          ],
        ),
      ),
      body: Column(children: [
        Row(
          children: [
            Container(
                height: 130,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: people.length,
                    itemBuilder: (context, index) {
                      return BubbleStories(text: people[index]);
                    })),
            ListView.builder(
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return UserPosts(
                    name: people[index],
                  );
                })
          ],
        ),
      ]),
    );
  }
}
