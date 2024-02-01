import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.imageUrl, this.index});

  final String imageUrl;
  final int? index;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio:4.3 / 6 ,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.amber,
          image: DecorationImage(
            image: NetworkImage(imageUrl),
            fit: BoxFit.cover ,
          ),
        ),
      ),
    );
  }
}
