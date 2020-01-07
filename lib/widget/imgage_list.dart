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
        return buildImage(images[index]);
      },
    );
  }

  Widget buildImage(ImageFetch images) {
    return Container(
      margin: EdgeInsets.all(20.0),
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
      child: Column(
        children: <Widget>[
          Padding(
            child: Image.network(images.url),
            padding: EdgeInsets.only(bottom: 8.0),
          ),
          // Image.network(images.url),
          Text(
            images.title,
            style: TextStyle(
              color: Colors.grey[20],
              fontSize: 18.0,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
