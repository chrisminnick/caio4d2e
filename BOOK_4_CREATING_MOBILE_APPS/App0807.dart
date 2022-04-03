// app0807.dart

import 'package:flutter/material.dart';

import 'app08main.dart';

extension MoreMovieTitlePage on MovieTitlePageState {
  goToDetailPage(int index) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailPage(),
        settings: RouteSettings(
          arguments: index,
        ),
      ),
    );
  }

  Widget buildTitlePageCore() {
    return ListView.builder(
      itemCount: 25,
      itemBuilder: (context, index) => ListTile(
        title: Text('Rocky ${index + 1}'),
        onTap: () => goToDetailPage(index + 1),
      ),
    );
  }
}

extension MoreDetailPage on DetailPage {
  Widget buildDetailPageCore(context) {
    final sequelNumber = ModalRoute.of(context)?.settings.arguments as int;
    final overview =
        'For the $sequelNumber${getSuffix(sequelNumber)} time, palooka '
        'Rocky Balboa fights to be the world heavyweight boxing champion.';
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(overview),
      ],
    );
  }

  String getSuffix(int sequelNumber) {
    String suffix;
    switch (sequelNumber) {
      case 1:
      case 21:
        suffix = 'st';
        break;
      case 2:
      case 22:
        suffix = 'nd';
        break;
      case 3:
      case 23:
        suffix = 'rd';
        break;
      default:
        suffix = 'th';
    }
    return suffix;
  }
}
