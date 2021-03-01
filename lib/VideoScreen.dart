import 'package:flutter/material.dart';
import 'HomeScreen.dart';

class VideoScreen extends StatelessWidget {
  const VideoScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
          margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: screenSize.width > 580 ? 3 : 2,
                childAspectRatio: 1.8,
                crossAxisSpacing: 40,
                mainAxisSpacing: 40,
              ),
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(32),
                          bottomLeft: Radius.circular(32))),
                  child: ClipRRect(
                    child: Image.asset(
                      "assets/${index + 1}.jpg",
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(32),
                        bottomRight: Radius.circular(32)),
                  ),
                );
              })),
    );
  }
}