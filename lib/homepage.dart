import 'package:deliveryapp/notification.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:deliveryapp/resi.dart';
import 'package:deliveryapp/tracking.dart';
import 'package:deliveryapp/voucher.dart';
import 'package:deliveryapp/comingSoon.dart';
import 'package:deliveryapp/model/data.dart';

class MyHomePage extends StatelessWidget {
  final _selectedIndex = 0;
  var dataOnGoingList = dataList
      .where((element) => element.status != 'Delivery Complete')
      .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
              child: Container(
            constraints: const BoxConstraints(maxWidth: 768),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SafeArea(
                      child: Container(
                    margin: const EdgeInsets.only(top: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Hi, Leonardo!',
                          style: Theme.of(context).textTheme.headline2,
                        ),
                        IconButton(
                          icon: const Icon(FontAwesomeIcons.bell),
                          onPressed: () => Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const NotificationPage();
                          })),
                        )
                      ],
                    ),
                  )),
                  Container(
                      margin: const EdgeInsets.only(top: 32.0),
                      child: LayoutBuilder(builder:
                          (BuildContext context, BoxConstraints constraints) {
                        if (constraints.maxWidth < 250) {
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: () => Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return const ComingSoonPage(
                                        title: 'Send Item',
                                      );
                                    })),
                                    child: Container(
                                      padding: const EdgeInsets.all(1),
                                      margin: const EdgeInsets.only(bottom: 16),
                                      decoration: const BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: [
                                              Color.fromARGB(255, 84, 88, 91),
                                              Color.fromARGB(255, 29, 33, 39),
                                              Color.fromARGB(255, 84, 88, 91),
                                            ],
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(16.0))),
                                      child: Container(
                                          decoration: const BoxDecoration(
                                              color: Color.fromARGB(
                                                  255, 52, 58, 67),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(16.0))),
                                          padding: const EdgeInsets.all(24.0),
                                          child: const Icon(
                                            FontAwesomeIcons.paperPlane,
                                            size: 28,
                                          )),
                                    ),
                                  ),
                                  Text(
                                    'Send item',
                                    style:
                                        Theme.of(context).textTheme.bodyText1,
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: () => Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return const VoucherPage();
                                    })),
                                    child: Container(
                                      padding: const EdgeInsets.all(1),
                                      margin: const EdgeInsets.only(bottom: 16),
                                      decoration: const BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: [
                                              Color.fromARGB(255, 84, 88, 91),
                                              Color.fromARGB(255, 29, 33, 39),
                                              Color.fromARGB(255, 84, 88, 91),
                                            ],
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(16.0))),
                                      child: Container(
                                        decoration: const BoxDecoration(
                                            color:
                                                Color.fromARGB(255, 52, 58, 67),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(16.0))),
                                        padding: const EdgeInsets.all(24.0),
                                        child: const Icon(
                                          FontAwesomeIcons.receipt,
                                          size: 28,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'Voucher',
                                    style:
                                        Theme.of(context).textTheme.bodyText1,
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: () => Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return const ComingSoonPage(
                                          title: 'Call Center');
                                    })),
                                    child: Container(
                                      padding: const EdgeInsets.all(1),
                                      margin: const EdgeInsets.only(bottom: 16),
                                      decoration: const BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: [
                                              Color.fromARGB(255, 84, 88, 91),
                                              Color.fromARGB(255, 29, 33, 39),
                                              Color.fromARGB(255, 84, 88, 91),
                                            ],
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(16.0))),
                                      child: Container(
                                          decoration: const BoxDecoration(
                                              color: Color.fromARGB(
                                                  255, 52, 58, 67),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(16.0))),
                                          padding: const EdgeInsets.all(24.0),
                                          child: const Icon(
                                              FontAwesomeIcons.phone,
                                              size: 28)),
                                    ),
                                  ),
                                  Text(
                                    'Call Center',
                                    style:
                                        Theme.of(context).textTheme.bodyText1,
                                  ),
                                ],
                              ),
                            ],
                          );
                        } else {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: () => Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return const ComingSoonPage(
                                        title: 'Send Item',
                                      );
                                    })),
                                    child: Container(
                                      padding: const EdgeInsets.all(1),
                                      margin: const EdgeInsets.only(bottom: 16),
                                      decoration: const BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: [
                                              Color.fromARGB(255, 84, 88, 91),
                                              Color.fromARGB(255, 29, 33, 39),
                                              Color.fromARGB(255, 84, 88, 91),
                                            ],
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(16.0))),
                                      child: Container(
                                          decoration: const BoxDecoration(
                                              color: Color.fromARGB(
                                                  255, 52, 58, 67),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(16.0))),
                                          padding: const EdgeInsets.all(24.0),
                                          child: const Icon(
                                            FontAwesomeIcons.paperPlane,
                                            size: 28,
                                          )),
                                    ),
                                  ),
                                  Text(
                                    'Send item',
                                    style:
                                        Theme.of(context).textTheme.bodyText1,
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: () => Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return const VoucherPage();
                                    })),
                                    child: Container(
                                      padding: const EdgeInsets.all(1),
                                      margin: const EdgeInsets.only(bottom: 16),
                                      decoration: const BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: [
                                              Color.fromARGB(255, 84, 88, 91),
                                              Color.fromARGB(255, 29, 33, 39),
                                              Color.fromARGB(255, 84, 88, 91),
                                            ],
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(16.0))),
                                      child: Container(
                                        decoration: const BoxDecoration(
                                            color:
                                                Color.fromARGB(255, 52, 58, 67),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(16.0))),
                                        padding: const EdgeInsets.all(24.0),
                                        child: const Icon(
                                          FontAwesomeIcons.receipt,
                                          size: 28,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'Voucher',
                                    style:
                                        Theme.of(context).textTheme.bodyText1,
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: () => Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return const ComingSoonPage(
                                          title: 'Call Center');
                                    })),
                                    child: Container(
                                      padding: const EdgeInsets.all(1),
                                      margin: const EdgeInsets.only(bottom: 16),
                                      decoration: const BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: [
                                              Color.fromARGB(255, 84, 88, 91),
                                              Color.fromARGB(255, 29, 33, 39),
                                              Color.fromARGB(255, 84, 88, 91),
                                            ],
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(16.0))),
                                      child: Container(
                                          decoration: const BoxDecoration(
                                              color: Color.fromARGB(
                                                  255, 52, 58, 67),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(16.0))),
                                          padding: const EdgeInsets.all(24.0),
                                          child: const Icon(
                                              FontAwesomeIcons.phone,
                                              size: 28)),
                                    ),
                                  ),
                                  Text(
                                    'Call Center',
                                    style:
                                        Theme.of(context).textTheme.bodyText1,
                                  ),
                                ],
                              ),
                            ],
                          );
                        }
                      })),
                  Container(
                    margin: const EdgeInsets.only(top: 32),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Up Coming Delivery',
                            textAlign: TextAlign.left,
                            style: Theme.of(context).textTheme.headline2,
                          ),
                        ),
                        ListView.builder(
                            padding: const EdgeInsets.all(0),
                            itemCount: dataOnGoingList.length,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              final Data data = dataOnGoingList[index];
                              return Container(
                                  decoration: const BoxDecoration(
                                      color: Color.fromARGB(255, 52, 58, 67),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(16))),
                                  padding: const EdgeInsets.all(16),
                                  margin: const EdgeInsets.only(top: 16),
                                  alignment: Alignment.center,
                                  child: InkWell(
                                    onTap: () => Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return TrackingPage(
                                        id: data.id,
                                        process: data.process,
                                        position: data.position,
                                      );
                                    })),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Icon(
                                          FontAwesomeIcons.box,
                                          size: 56,
                                          color:
                                              Color.fromARGB(255, 233, 72, 69),
                                        ),
                                        Expanded(child: LayoutBuilder(builder:
                                            (BuildContext context,
                                                BoxConstraints constraints) {
                                          if (constraints.maxWidth < 250) {
                                            return Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 16),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        data.id,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: const TextStyle(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                      Text(
                                                        data.destination,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: const TextStyle(
                                                          fontSize: 10,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  decoration:
                                                      const BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(8)),
                                                    gradient: LinearGradient(
                                                      colors: [
                                                        Color.fromARGB(
                                                            255, 206, 52, 49),
                                                        Color.fromARGB(
                                                            255, 233, 72, 69),
                                                      ],
                                                      begin: Alignment
                                                          .bottomCenter,
                                                      end: Alignment.topCenter,
                                                    ),
                                                  ),
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 16,
                                                      vertical: 8),
                                                  child: Text(
                                                    data.status,
                                                    style: const TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                              ],
                                            );
                                          } else {
                                            return Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 16),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        data.id,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: const TextStyle(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                      Text(
                                                        data.destination,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: const TextStyle(
                                                          fontSize: 10,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  decoration:
                                                      const BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(8)),
                                                    gradient: LinearGradient(
                                                      colors: [
                                                        Color.fromARGB(
                                                            255, 206, 52, 49),
                                                        Color.fromARGB(
                                                            255, 233, 72, 69),
                                                      ],
                                                      begin: Alignment
                                                          .bottomCenter,
                                                      end: Alignment.topCenter,
                                                    ),
                                                  ),
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 16,
                                                      vertical: 8),
                                                  child: Text(
                                                    data.status,
                                                    style: const TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                              ],
                                            );
                                          }
                                        }))
                                      ],
                                    ),
                                  ));
                            })
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 32),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Last Shipping',
                                textAlign: TextAlign.left,
                                style: Theme.of(context).textTheme.headline2,
                              ),
                              TextButton(
                                onPressed: (() => Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return const ResiPage();
                                    }))),
                                child: Text(
                                  'See All',
                                  textAlign: TextAlign.left,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .merge(
                                        const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Color.fromARGB(255, 233, 72, 69),
                                        ),
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            ListView.builder(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: 2,
                                itemBuilder: (context, index) {
                                  final Data data = dataList[index];
                                  return Container(
                                      decoration: const BoxDecoration(
                                          color:
                                              Color.fromARGB(255, 52, 58, 67),
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
                                              margin: const EdgeInsets.only(
                                                  right: 16),
                                              child: const Icon(
                                                FontAwesomeIcons.box,
                                                size: 56,
                                                color: Color.fromARGB(
                                                    255, 193, 193, 193),
                                              ),
                                            ),
                                            Expanded(child: LayoutBuilder(
                                                builder: (BuildContext context,
                                                    BoxConstraints
                                                        constrainsts) {
                                              if (constrainsts.maxWidth < 200) {
                                                return Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          data.id,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style:
                                                              const TextStyle(
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                        ),
                                                        Text(
                                                          data.destination,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style:
                                                              const TextStyle(
                                                            fontSize: 10,
                                                            fontWeight:
                                                                FontWeight.w300,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Text(
                                                      data.sent,
                                                      textAlign:
                                                          TextAlign.start,
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
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          data.id,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style:
                                                              const TextStyle(
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                        ),
                                                        Text(
                                                          data.destination,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style:
                                                              const TextStyle(
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
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
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
          if (index == 1)
            {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const ResiPage();
              }))
            }
        },
      ),
    );
  }
}
