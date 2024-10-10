import 'package:flutter/material.dart';
import 'package:swd_app/reusable_widget.dart/home_balance_widget.dart';
import 'package:swd_app/reusable_widget.dart/home_header_widget.dart';
import 'package:swd_app/reusable_widget.dart/quick_action_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screeheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: screeheight,
          width: screenwidth,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/Login.png'), fit: BoxFit.cover),
          ),
          child: Center(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                width: screenwidth,
                height: 340,
                padding:
                    const EdgeInsets.symmetric(vertical: 55, horizontal: 24),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(24),
                    bottomRight: Radius.circular(24),
                  ),
                  color: Color(0xffffffff),
                ),
                child: const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      HomeHeaderWidget(),
                      SizedBox(height: 20),
                      HomeBalanceWidget(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(children: [
                            Icon(Icons.add_box_outlined),
                            Text('top up')
                          ]),
                          Column(children: [
                            Icon(Icons.telegram_rounded),
                            Text('Transfer')
                          ]),
                          Column(children: [
                            Icon(Icons.history_toggle_off),
                            Text('History')
                          ]),
                        ],
                      )
                    ]),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Quick Actions',
                      textAlign: TextAlign.start,
                      style: TextStyle(fontSize: 18, color: Color(0xffffffff)),
                    ),
                    const SizedBox(height: 20),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          QuickActionWidget('Data', 'assets/datasw.png', () {}),
                          QuickActionWidget(
                              'Airtime', 'assets/airtimesw.png', () {}),
                          QuickActionWidget(
                              'Showmax', 'assets/showmaxsw.png', () {}),
                          QuickActionWidget(
                              'Giftcard', 'assets/giftcardsw.png', () {})
                        ])
                  ],
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
