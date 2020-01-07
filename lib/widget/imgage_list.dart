import 'package:flutter/material.dart';
import 'package:myapp/src/model_img.dart';

class ImageList extends StatelessWidget {
  final List<ImageFetch> images;
  ImageList(this.images);
  //const ImageList(List<ImageFetch> images, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (context, int index) {
        return Image.network(images[index].url);
      },
    );
  }
}
