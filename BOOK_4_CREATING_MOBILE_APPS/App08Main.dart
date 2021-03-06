// app08main.dart

import 'package:flutter/material.dart';

import 'app0803.dart'; // Change this line to App0803, App0804, and so on.

void main() => runApp(const App08Main());

class App08Main extends StatelessWidget {
  const App08Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MovieTitlePage(),
    );
  }
}

class MovieTitlePage extends StatefulWidget {
  const MovieTitlePage({Key? key}) : super(key: key);

  @override
  MovieTitlePageState createState() => MovieTitlePageState();
}

class MovieTitlePageState extends State<MovieTitlePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Movie Title',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: buildTitlePageCore(),
        ),
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  final overview = '(From themoviedb.com) One day at work, unsuccessful '
      'puppeteer Craig finds a portal into the head of actor John '
      'Malkovich. The portal soon becomes a passion for anybody who '
      'enters its mad and controlling world of overtaking another human '
      'body.';

  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Details',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: buildDetailPageCore(context),
        ),
      ),
    );
  }
}
