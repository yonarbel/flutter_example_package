import 'package:flutter/material.dart';
import 'dart:developer';

class JfrogContainer extends StatefulWidget {

  const JfrogContainer({
    Key? key,
    required this.heading,
    this.subheading = "",
    this.mainCardText = "Default Text",
    required this.supportingText,
  }) : super(key: key);

  final String heading;
  final String subheading;
  final String supportingText;
  final String mainCardText;

  @override
  _JfrogContainerState createState() => _JfrogContainerState();
}

class _JfrogContainerState extends State<JfrogContainer> {
  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 4.0,
        child: Column(
          children: [
            ListTile(
              title: Text(widget.heading),
              subtitle: Text(widget.subheading),
              trailing: Icon(Icons.favorite_outline),
            ),
            Container(
                height: 200.0,
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        widget.mainCardText,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  gradient: LinearGradient(
                      colors: [Color(0xFF40be46), Color(0xFF063879)],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 12,
                      offset: Offset(0, 6),
                    ),
                  ],
                )),
            Container(
              padding: EdgeInsets.all(16.0),
              alignment: Alignment.centerLeft,
              child: Text(widget.supportingText),
            ),
            ButtonBar(
              children: [
                TextButton(
                  child: const Text('Remove'),
                  onPressed: () {
                    log('I Was pressed remove');
                  },
                ),
                TextButton(
                  child: const Text('LEARN MORE'),
                  onPressed: () {
                    log('I Was pressed to learn from package');
                    },
                ),
              ],
            )
          ],
        ));
  }
}
