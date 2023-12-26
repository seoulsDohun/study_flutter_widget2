import 'package:flutter/material.dart';
import 'package:toonflix/button.dart';
import 'package:toonflix/currency_card.dart';

void main() {
  runApp(const App());
}

// 위젯은 flutter SDK에 있는 3개의 core 위젯중 하나를 상속 받아야 함.
class App extends StatelessWidget {
  const App({super.key});

  // StatelessWidget는 추상화 class로 build를 반드시 override해야함.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF181818),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          'Hey, Dohun',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.w800),
                        ),
                        Text(
                          'Welcome back',
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 120,
                ),
                Text(
                  'Tatal Balance',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  '\$ 12,000,000',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontSize: 32,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    button(
                      text: 'Transfer',
                      textColor: Colors.black,
                      bgColor: Color(0xFFF1B33B),
                    ),
                    button(
                      text: 'Request',
                      textColor: Colors.white,
                      bgColor: Color(0xFF1f2123),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 100,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      'Wallets',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 38,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'View All',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.6),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const CurrencyCard(
                  name: 'Euro',
                  amount: '6,428',
                  code: 'EUR',
                  icon: Icons.euro_rounded,
                  isInverted: true,
                ),
                Transform.translate(
                  offset: const Offset(0, -30),
                  child: const CurrencyCard(
                    name: 'Bitcoin',
                    amount: '1,583',
                    code: 'BTC',
                    icon: Icons.currency_bitcoin_rounded,
                    isInverted: false,
                  ),
                ),
                Transform.translate(
                  offset: const Offset(0, -60),
                  child: const CurrencyCard(
                    name: 'Dollar',
                    amount: '12,283',
                    code: 'USD',
                    icon: Icons.attach_money_rounded,
                    isInverted: true,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
