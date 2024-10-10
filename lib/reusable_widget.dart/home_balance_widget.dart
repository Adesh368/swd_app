import 'package:flutter/material.dart';

class HomeBalanceWidget extends StatefulWidget {
  const HomeBalanceWidget({super.key});

  @override
  State<HomeBalanceWidget> createState() => _HomeBalanceWidgetState();
}

class _HomeBalanceWidgetState extends State<HomeBalanceWidget> {
   bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(8),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [Color(0xffEFA058), Color(0xffEF5858)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Wallet balance',
                  style: TextStyle(color: Color(0xffffffff), fontSize: 16)),
              Row(children: [
                const Text(
                  'NGN 50,000',
                  style: TextStyle(color: Color(0xffffffff), fontSize: 16),
                ),
                IconButton(
                  icon: Icon(
                    _obscureText ? Icons.visibility_off : Icons.visibility,
                    color: const Color(0xffffffff),
                  ),
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                ),
              ]),
              Container(
                padding:
                    const EdgeInsets.only(left: 8, right: 8, bottom: 4, top: 4),
                decoration: BoxDecoration(
                  color: const Color(0xffffffff),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: const Row(children: [
                  Text('Cashback', style: TextStyle(color: Color(0xff282828))),
                  Text('#341.2', style: TextStyle(color: Color(0xffEFA058))),
                ]),
              )
            ]),
        Column(children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xffEFA058), Color(0xffEF5858)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text('MONIEPOINT',
                      style: TextStyle(
                          color: Color(
                            0xffffffff,
                          ),
                          fontSize: 10)),
                  Row(
                    children: [
                      const Text('8192017482',
                          style: TextStyle(
                              color: Color(
                                0xffffffff,
                              ),
                              fontSize: 16)),
                      IconButton(
                        icon: const Icon(
                          Icons.copy_rounded,
                        ),
                        onPressed: () {},
                        color: const Color(0xffffffff),
                      ),
                    ],
                  ),
                  const Text('Deposit Fee: N20',
                      style: TextStyle(
                          color: Color(
                            0xffffffff,
                          ),
                          fontSize: 10))
                ]),
          )
        ])
      ]),
    );
  }
}
