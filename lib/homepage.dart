import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:deliveryapp/resi.dart';
import 'package:deliveryapp/tracking.dart';
import 'package:deliveryapp/model/data.dart';

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({super.key, required this.title});

  @override
  State<MyHomePage> createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage> {
  final _selectedIndex = 0;
  var dataOnGoingList = dataList
      .where((element) => element.status != 'Delivery Complete')
      .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
                        // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                        icon: const Icon(FontAwesomeIcons.bell),
                        onPressed: () => print("Pressed"))
                  ],
                ),
              )),
              Container(
                margin: const EdgeInsets.only(top: 16.0),
                child: const MyCustomForm(),
              ),
              Container(
                margin: const EdgeInsets.only(top: 32.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16.0))),
                          child: Container(
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 52, 58, 67),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(16.0))),
                            padding: const EdgeInsets.all(16.0),
                            child: IconButton(
                              iconSize: 28.0,
                              icon: const FaIcon(FontAwesomeIcons.paperPlane),
                              onPressed: () => print('kepencet'),
                            ),
                          ),
                        ),
                        Text(
                          'Send item',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16.0))),
                          child: Container(
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 52, 58, 67),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(16.0))),
                            padding: const EdgeInsets.all(16.0),
                            child: IconButton(
                              iconSize: 28.0,
                              icon: const FaIcon(FontAwesomeIcons.receipt),
                              onPressed: () => print('kepencet'),
                            ),
                          ),
                        ),
                        Text(
                          'Voucher',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16.0))),
                          child: Container(
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 52, 58, 67),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(16.0))),
                            padding: const EdgeInsets.all(16.0),
                            child: IconButton(
                              iconSize: 28.0,
                              icon: const FaIcon(FontAwesomeIcons.phone),
                              onPressed: () => print('kepencet'),
                            ),
                          ),
                        ),
                        Text(
                          'Call Center',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ],
                    ),
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
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(16))),
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
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Icon(
                                          FontAwesomeIcons.box,
                                          size: 56,
                                          color:
                                              Color.fromARGB(255, 233, 72, 69),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 16),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
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
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8)),
                                        gradient: LinearGradient(
                                          colors: [
                                            Color.fromARGB(255, 206, 52, 49),
                                            Color.fromARGB(255, 233, 72, 69),
                                          ],
                                          begin: Alignment.bottomCenter,
                                          end: Alignment.topCenter,
                                        ),
                                      ),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16, vertical: 8),
                                      child: Text(
                                        data.status,
                                        style: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
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
                                  return const ResiPage(title: 'Resi Page');
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
                                      color: Color.fromARGB(255, 233, 72, 69),
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
                            padding: const EdgeInsets.all(0),
                            itemCount: 1,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
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
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const Icon(
                                            FontAwesomeIcons.box,
                                            size: 56,
                                            color: Color.fromARGB(
                                                255, 193, 193, 193),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 16),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
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
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8)),
                                        ),
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 16, vertical: 8),
                                        child: Text(
                                          data.sent,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText2,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            })
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
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
          if (index == 1)
            {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const ResiPage(title: 'Resi Page');
              }))
            }
        },
      ),
    );
  }
}

// Create a Form widget.
class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Stack(
        children: [
          Flexible(
            child: TextFormField(
              decoration: InputDecoration(
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16.0)),
                  ),
                  filled: true,
                  prefixIcon:
                      const Icon(FontAwesomeIcons.truckFast, size: 18.0),
                  fillColor: const Color.fromARGB(255, 52, 58, 67),
                  hintText: 'Search Shipping Code',
                  hintStyle: Theme.of(context).textTheme.bodyText1),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
          ),
          Positioned.fill(
              child: Align(
            alignment: Alignment.centerRight,
            child: IconButton(
              iconSize: 18.0,
              icon: const Icon(FontAwesomeIcons.magnifyingGlass),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Processing Data')),
                  );
                }
              },
            ),
          ))
        ],
      ),
    );
  }
}
