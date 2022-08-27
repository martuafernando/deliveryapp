import 'package:deliveryapp/model/data.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:deliveryapp/tracking.dart';

class ResiPage extends StatefulWidget {
  const ResiPage({super.key});

  @override
  State<ResiPage> createState() => _ResiPage();
}

class _ResiPage extends State<ResiPage> {
  final _selectedIndex = 1;

  @override
  List<Data> _foundId = [];
  final _formKey = GlobalKey<FormState>();

  initState() {
    _foundId = dataList;
    super.initState();
  }

  void runFilter(String enteredId) {
    List<Data> results;
    if (enteredId.isEmpty) {
      results = dataList;
    } else {
      results = dataList
          .where(
              (data) => data.id.toLowerCase().contains(enteredId.toLowerCase()))
          .toList();
    }
    setState(() {
      _foundId = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
              child: Container(
            constraints: const BoxConstraints(maxWidth: 768),
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
                            margin: const EdgeInsets.only(top: 4),
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
                        margin: const EdgeInsets.only(top: 16.0),
                        child: Stack(
                          children: [
                            TextFormField(
                              onChanged: (value) => runFilter(value),
                              decoration: InputDecoration(
                                  border: const OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(16.0)),
                                  ),
                                  filled: true,
                                  prefixIcon: const Icon(
                                      FontAwesomeIcons.truckFast,
                                      size: 18.0),
                                  fillColor:
                                      const Color.fromARGB(255, 52, 58, 67),
                                  hintText: 'Search Shipping Code',
                                  hintStyle:
                                      Theme.of(context).textTheme.bodyText1),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;
                              },
                            ),
                            const Positioned.fill(
                                child: Align(
                              alignment: Alignment.topRight,
                              child: Padding(
                                padding: EdgeInsets.all(20),
                                child: Icon(
                                  FontAwesomeIcons.magnifyingGlass,
                                  size: 18,
                                ),
                              ),
                            ))
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 16),
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: _foundId.length,
                            itemBuilder: (context, index) {
                              final Data data = _foundId[index];
                              return Container(
                                  decoration: const BoxDecoration(
                                      color: Color.fromARGB(255, 52, 58, 67),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(16))),
                                  padding: const EdgeInsets.all(16),
                                  margin: const EdgeInsets.only(top: 16),
                                  alignment: Alignment.center,
                                  child: InkWell(
                                    onTap: (() => Navigator.push(context,
                                            MaterialPageRoute(
                                                builder: (context) {
                                          return TrackingPage(
                                            id: data.id,
                                            process: data.process,
                                            position: data.position,
                                          );
                                        }))),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          margin:
                                              const EdgeInsets.only(right: 16),
                                          child: const Icon(
                                            FontAwesomeIcons.box,
                                            size: 56,
                                            color: Color.fromARGB(
                                                255, 193, 193, 193),
                                          ),
                                        ),
                                        Expanded(child: LayoutBuilder(builder:
                                            (BuildContext context,
                                                BoxConstraints constrainsts) {
                                          if (constrainsts.maxWidth < 200) {
                                            return Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      data.id,
                                                      textAlign: TextAlign.left,
                                                      style: const TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                    ),
                                                    Text(
                                                      data.destination,
                                                      textAlign: TextAlign.left,
                                                      style: const TextStyle(
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Text(
                                                  data.sent,
                                                  textAlign: TextAlign.start,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyText2,
                                                ),
                                              ],
                                            );
                                          } else {
                                            return Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      data.id,
                                                      textAlign: TextAlign.left,
                                                      style: const TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                    ),
                                                    Text(
                                                      data.destination,
                                                      textAlign: TextAlign.left,
                                                      style: const TextStyle(
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Text(
                                                  data.sent,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyText2,
                                                ),
                                              ],
                                            );
                                          }
                                        }))
                                      ],
                                    ),
                                  ));
                            }),
                      )
                    ],
                  ),
                )),
          ))
        ],
      )),
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
