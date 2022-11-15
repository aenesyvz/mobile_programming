import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class StartedMyApp extends StatelessWidget {
  const StartedMyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
          title: const Text('Startup Name Generator'),
        ),
        body: const Center(
          child: StartRandomWords(),
        ),
    );
  }
}

class StartRandomWords extends StatefulWidget {
  const StartRandomWords({super.key});

  @override
  State<StartRandomWords> createState() => _StartRandomWordsState();
}

class _StartRandomWordsState extends State<StartRandomWords> {
  final _suggestions = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 18);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: /*1*/ (context, i) {
        if (i.isOdd) return const Divider(); /*2*/

        final index = i ~/ 2; /*3*/
        if (index >= _suggestions.length) {
          _suggestions.addAll(generateWordPairs().take(10)); /*4*/
        }
        // #docregion listTile
        return ListTile(
          title: Text(
            _suggestions[index].asPascalCase,
            style: _biggerFont,
          ),
        );
        // #enddocregion listTile
      },
    );
  }
}