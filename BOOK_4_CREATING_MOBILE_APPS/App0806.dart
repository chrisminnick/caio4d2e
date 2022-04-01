// App0806.dart

import 'package:flutter/material.dart';

void main() => runApp(App0806());

class App0806 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => MovieTitlePage(),
        '/details': (context) => DetailPage(),
        '/details/cast': (context) => CastPage(),
        '/details/reviews': (context) => ReviewsPage(),
      },
    );
  }
}

class MovieTitlePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _buildEasyScaffold(
      appBarTitle: 'Movie Title Page',
      body: _buildEasyButton(
        context,
        label: 'Go to Detail Page',
        whichRoute: '/details',
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _buildEasyScaffold(
      appBarTitle: 'Detail Page',
      body: Column(
        children: <Widget>[
          _buildEasyButton(
            context,
            label: 'Go to Cast Page',
            whichRoute: '/details/cast',
          ),
          _buildEasyButton(
            context,
            label: 'Go to Reviews Page',
            whichRoute: '/details/reviews',
          ),
        ],
      ),
    );
  }
}

class CastPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _buildEasyScaffold(
      appBarTitle: 'Cast Page',
      body: Container(),
    );
  }
}

class ReviewsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _buildEasyScaffold(
      appBarTitle: 'Reviews Page',
      body: Container(),
    );
  }
}

Widget _buildEasyScaffold({required String appBarTitle, required Widget body}) {
  return Scaffold(
    appBar: AppBar(
      title: Text(appBarTitle),
    ),
    body: body,
  );
}

Widget _buildEasyButton(
  BuildContext context, {
  required String label,
  required String whichRoute,
}) {
  return ElevatedButton(
    child: Text(label),
    onPressed: () {
      Navigator.pushNamed(
        context,
        whichRoute,
      );
    },
  );
}
