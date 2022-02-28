// App0805.dart

import 'package:flutter/material.dart';

import 'App08Main.dart';

extension MoreMovieTitlePage on MovieTitlePageState {
  static bool _isFavorite = false;

  goToDetailPage() async {
    _isFavorite = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailPage(),
        settings: RouteSettings(
          arguments: _isFavorite,
        ),
      ),
    );
    setState(() {});
  }

  Widget buildTitlePageCore() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Being John Malkovich',
              textScaleFactor: 1.5,
            ),
            Visibility(
              visible: _isFavorite,
              child: Icon(Icons.favorite),
            ),
          ],
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
    final bool _isFavoriteArgument =
        ModalRoute.of(context)?.settings.arguments as bool;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          overview,
        ),
        SizedBox(height: 16.0),
        ElevatedButton(
          child: Text(
            _isFavoriteArgument == true
                ? 'Unfavorite this'
                : 'Make it a Favorite!',
          ),
          onPressed: () {
            Navigator.pop(context, !_isFavoriteArgument);
          },
        ),
      ],
    );
  }
}
