import 'package:flutter/material.dart';

class PhotoScreen extends StatelessWidget {

  PhotoScreen({
    this.url
  });

  final String? url;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                color: Colors.black87,
                child: Center(
                  child: Image(
                    image: NetworkImage(url!),
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
