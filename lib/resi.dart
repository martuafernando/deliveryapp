import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:deliveryapp/tracking.dart';

class ResiPage extends StatefulWidget {
  final String title;

  const ResiPage({super.key, required this.title});

  @override
  State<ResiPage> createState() => _ResiPage();
}

class _ResiPage extends State<ResiPage> {
  final _selectedIndex = 1;

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
                          'Resi Pengiriman',
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.headline2,
                        ),
                      ),
                    ],
                  ),
                  Container(
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 52, 58, 67),
                          borderRadius: BorderRadius.all(Radius.circular(16))),
                      padding: const EdgeInsets.all(16),
                      margin: const EdgeInsets.only(top: 32),
                      alignment: Alignment.center,
                      child: InkWell(
                        onTap: (() => Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const TrackingPage(title: 'Tracking Page');
                            }))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  FontAwesomeIcons.box,
                                  size: 56,
                                  color: Color.fromARGB(255, 193, 193, 193),
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16),
                                  child: Column(
                                    children: const [
                                      Text(
                                        'JX32152435',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Text(
                                        'Jakarta, Indonesia',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 8),
                              child: Text(
                                '24 Agt 2022',
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                            ),
                          ],
                        ),
                      )),
                ],
              ),
            )),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.house),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.tableList),
            label: 'Resi',
          ),
        ],
        backgroundColor: const Color.fromARGB(255, 52, 58, 67),
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: (index) => {
          if (index == 0) {Navigator.pop(context)}
        },
      ),
    );
  }
}
