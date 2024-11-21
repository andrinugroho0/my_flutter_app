import 'package:flutter/material.dart';

class GalleryPage extends StatelessWidget {
  final List<String> images = List.generate(
    10,
    (index) => 'https://via.placeholder.com/150?text=Image+${index + 1}',
  );

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(8.0),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
      ),
      itemCount: images.length,
      itemBuilder: (context, index) {
        return Image.network(images[index], fit: BoxFit.cover);
      },
    );
  }
}
