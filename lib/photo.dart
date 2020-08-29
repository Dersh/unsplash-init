import 'package:flutter/material.dart';

class Photo extends StatelessWidget {
  String url;
  String tag;

  Photo({this.url, this.tag});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        brightness: Brightness.light,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Color.fromRGBO(0, 0, 0, 1),
          ),
          onPressed: () => Navigator.pop(context, false),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Hero(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(17.0),
                  child: Image.network(
                    this.url,
                    width: MediaQuery.of(context).size.width - 20,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                tag: this.tag),
          ),
        ),
      ),
    );
  }
}
