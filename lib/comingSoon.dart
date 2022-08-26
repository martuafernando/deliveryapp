import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ComingSoonPage extends StatelessWidget {
  final String title;
  const ComingSoonPage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Stack(
            children: [
              IconButton(
                  icon: const Icon(FontAwesomeIcons.angleLeft),
                  onPressed: () => Navigator.pop(context)),
              Container(
                margin: const EdgeInsets.only(top: 8),
                alignment: Alignment.center,
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline2,
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 48),
            child: Text(
              'This feature will be available soon',
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .merge(TextStyle(color: Color.fromARGB(255, 134, 144, 160))),
            ),
          )
        ],
      ),
    )));
  }
}
