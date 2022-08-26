import 'package:deliveryapp/model/data.dart';
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
                  ListView.builder(
                      shrinkWrap: true,
                      itemCount: dataList.length,
                      itemBuilder: (context, index) {
                        final Data data = dataList[index];
                        return Container(
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 52, 58, 67),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(16))),
                            padding: const EdgeInsets.all(16),
                            margin: const EdgeInsets.only(top: 16),
                            alignment: Alignment.center,
                            child: InkWell(
                              onTap: (() => Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return TrackingPage(
                                      id: data.id,
                                      process: data.process,
                                      position: data.position,
                                    );
                                  }))),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Icon(
                                        FontAwesomeIcons.box,
                                        size: 56,
                                        color:
                                            Color.fromARGB(255, 193, 193, 193),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 16),
                                        child: Column(
                                          children: [
                                            Text(
                                              data.id,
                                              textAlign: TextAlign.left,
                                              style: const TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            Text(
                                              data.destination,
                                              textAlign: TextAlign.left,
                                              style: const TextStyle(
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
                                      data.sent,
                                      style:
                                          Theme.of(context).textTheme.bodyText2,
                                    ),
                                  ),
                                ],
                              ),
                            ));
                      })
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
