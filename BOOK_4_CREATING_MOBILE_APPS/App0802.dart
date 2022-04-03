// app0802.dart

import 'package:flutter/material.dart';

import 'app08main.dart';

extension MoreMovieTitlePage on MovieTitlePageState {
  goToDetailPage() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailPage(),
      ),
    );
  }

  Widget buildTitlePageCore() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          'Being John Malkovich',
          textScaleFactor: 1.5,
        ),
        SizedBox(height: 16.0),
        ElevatedButton.icon(
          icon: Icon(Icons.arrow_forward),
          label: Text('Details'),
          onPressed: goToDetailPage,
        ),
      ],
    );
  }
}

extension MoreDetailPage on DetailPage {
  Widget buildDetailPageCore(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          overview,
        ),
      ],
    );
  }
}
