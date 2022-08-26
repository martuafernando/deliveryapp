import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TrackingPage extends StatefulWidget {
  final String id;
  final double process;
  final List<List<String>> position;

  const TrackingPage({
    super.key,
    required this.id,
    required this.process,
    required this.position,
  });

  @override
  State<TrackingPage> createState() => _TrackingPage();
}

class _TrackingPage extends State<TrackingPage> {
  // convert double to string percentage
  String doubleToString(double number) {
    number = number * 100;
    int intNumber = number.toInt();
    String result = "$intNumber%";
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(16),
            child: SafeArea(
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
                          'Tracking',
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.headline2,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 32),
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: [
                        Text(
                          'Your Shipping Code',
                          style: Theme.of(context).textTheme.bodyText1!.merge(
                              const TextStyle(
                                  fontWeight: FontWeight.w300,
                                  color: Color.fromARGB(255, 152, 154, 158))),
                        ),
                        Text(widget.id,
                            style: Theme.of(context).textTheme.headline2),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 64),
                    child: Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        Container(
                          width: 120,
                          height: 120,
                          child: CircularProgressIndicator(
                            value: widget.process,
                            valueColor: const AlwaysStoppedAnimation<Color>(
                              Color.fromARGB(255, 233, 72, 69),
                            ),
                            backgroundColor:
                                const Color.fromARGB(255, 52, 58, 67),
                            strokeWidth: 32,
                            semanticsLabel: 'Linear progress indicator',
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              doubleToString(widget.process),
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const Text(
                              'Process',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.only(top: 64),
                      child: Column(
                        children: [
                          ListView.builder(
                            shrinkWrap: true,
                            itemCount: widget.position.length,
                            itemBuilder: (context, index) {
                              final List<String> data = widget.position[index];
                              return Container(
                                margin: const EdgeInsets.symmetric(vertical: 8),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Stack(
                                          alignment:
                                              AlignmentDirectional.center,
                                          children: const [
                                            CircleAvatar(
                                              radius: 15,
                                              backgroundColor: Color.fromARGB(
                                                  255, 233, 72, 69),
                                            ),
                                            CircleAvatar(
                                              radius: 8,
                                              backgroundColor: Color.fromARGB(
                                                  255, 29, 33, 39),
                                            )
                                          ],
                                        ),
                                        Container(
                                          margin:
                                              const EdgeInsets.only(left: 16),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(data[0],
                                                  textAlign: TextAlign.left,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyText1),
                                              Text(
                                                data[1],
                                                textAlign: TextAlign.left,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText2!
                                                    .merge(
                                                      const TextStyle(
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        color: Color.fromARGB(
                                                            255, 152, 154, 158),
                                                      ),
                                                    ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8)),
                                      ),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16, vertical: 8),
                                      child: Text(
                                        data[2],
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText2,
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          )
                        ],
                      )),
                ],
              ),
            )),
      ),
    );
  }
}
