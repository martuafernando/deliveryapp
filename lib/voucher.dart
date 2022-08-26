import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class VoucherPage extends StatelessWidget {
  const VoucherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
            child: Container(
                constraints: const BoxConstraints(maxWidth: 768),
                child: SafeArea(
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
                              'Voucher',
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.headline2,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 48),
                        child: Text(
                          'No Vouchers Available right now',
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.bodyText1!.merge(
                              TextStyle(
                                  color: Color.fromARGB(255, 134, 144, 160))),
                        ),
                      )
                    ],
                  ),
                ))))
      ],
    ));
  }
}
