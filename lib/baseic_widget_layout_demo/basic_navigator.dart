import 'package:flutter/material.dart';

class NavigatorDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              child: Text('Home'),
              onPressed: null,
            ),
            FlatButton(
              child: Text('About'),
              onPressed: () {
                Navigator.pushNamed(context, '/about');
                //   Navigator.of(context).push(
                //     MaterialPageRoute(
                //         builder: (BuildContext context) => Pagepush(title: 'About')),
                //   );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Pagepush extends StatelessWidget {
  final String title;

  Pagepush({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
