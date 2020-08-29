import 'package:flutter/material.dart';
import 'photo.dart';

class PhotoList extends StatefulWidget {
  String title;

  @override
  _PhotoListState createState() => _PhotoListState();

  PhotoList({this.title});
}

class _PhotoListState extends State<PhotoList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
          backgroundColor: Color.fromRGBO(255, 255, 255, 1),
          brightness: Brightness.light,
          elevation: 0.0,
        ),
        body: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          color: Color.fromRGBO(255, 255, 255, 1),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  height: 36,
                  child: TextField(
                    decoration: InputDecoration(hintText: 'search'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Container(
                  height: MediaQuery.of(context).size.height - 56 - 20,
                  child: ListView(
                    children: [
                      _listItem(
                          url:
                              'https://images.unsplash.com/photo-1494271823928-a80211877d80?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=200&fit=max&ixid=eyJhcHBfaWQiOjE1MDQ0OX0',
                          tag: "pict1"),
                      const SizedBox(
                        height: 12,
                      ),
                      _listItem(
                          url:
                              'https://images.unsplash.com/photo-1502809737437-1d85c70dd2ca?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=200&fit=max,',
                          tag: "pict2"),
                      const SizedBox(
                        height: 12,
                      ),
                      Container(
                        color: Color.fromRGBO(0, 0, 255, 1),
                        height: 338,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

class _listItem extends StatelessWidget {
  String url;
  String tag;

  _listItem({this.url, this.tag});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(17.0),
          child: Hero(
            child: Image.network(
              this.url,
              width: MediaQuery.of(context).size.width - 20,
              fit: BoxFit.fill,
            ),
            tag: this.tag,
          ),
        ),
        onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Photo(url: url, tag: tag))));
  }
}
