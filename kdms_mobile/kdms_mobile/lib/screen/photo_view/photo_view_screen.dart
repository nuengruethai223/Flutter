import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:photo_view/photo_view.dart';

class PhotoViewScreen extends StatelessWidget {
  final ImageProvider imageProvider;
  final String heroTag;

  const PhotoViewScreen({Key key, @required this.imageProvider, @required this.heroTag}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox.expand(
        child: Stack(
          children: <Widget>[
            PhotoView(
              backgroundDecoration: BoxDecoration(color: Colors.black),
              loadingBuilder: (_, __) => Container(
                color: Colors.black,
                child: SpinKitThreeBounce(
                  color: Colors.deepOrangeAccent,
                  size: 28,
                ),
              ),
              gaplessPlayback: true,
              minScale: PhotoViewComputedScale.contained * 1,
              maxScale: PhotoViewComputedScale.covered * 1.8,
              initialScale: PhotoViewComputedScale.contained,
              basePosition: Alignment.center,
              heroAttributes: PhotoViewHeroAttributes(
                tag: this.heroTag,
                transitionOnUserGestures: true,
              ),
              imageProvider: imageProvider,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: SafeArea(
                child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.black.withOpacity(0.3)),
                      child: Icon(Icons.arrow_back_ios_rounded),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
