// app0808.dart

import 'package:flutter/material.dart';

import 'app08main.dart';

const Map<String, String> synopses = {
  'Casablanca':
      'In Casablanca, Morocco in December 1941, a cynical American expatriate '
          'meets a former lover, with unforeseen complications.',
  'Citizen Kane':
      '. . . Charles Foster Kane is taken from his mother as a boy . . . '
          'As a result, every well-meaning, tyrannical or '
          'self-destructive move he makes for the rest of his life appears '
          'in some way to be a reaction to that deeply wounding event.',
  'Lawrence of Arabia':
      "The story of British officer T.E. Lawrence's mission to aid the Arab "
          "tribes in their revolt against the Ottoman Empire during the "
          "First World War.",
};

extension MoreMovieTitlePage on MovieTitlePageState {
  goToDetailPage(String movieName) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailPage(),
        settings: RouteSettings(
          arguments: movieName,
        ),
      ),
    );
  }

  Widget buildTitlePageCore() {
    return ListView(
      children: [
        ListTile(
          title: Text('Casablanca'),
          onTap: () => goToDetailPage('Casablanca'),
        ),
        ListTile(
          title: Text('Citizen Kane'),
          onTap: () => goToDetailPage('Citizen Kane'),
        ),
        ListTile(
          title: Text('Lawrence of Arabia'),
          onTap: () => goToDetailPage('Lawrence of Arabia'),
        ),
      ],
    );
  }
}

extension MoreDetailPage on DetailPage {
  Widget buildDetailPageCore(context) {
    final movieName = ModalRoute.of(context)?.settings.arguments;
    final overview = '(From themoviedb.com) ${synopses[movieName]}';
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(overview),
      ],
    );
  }
}
