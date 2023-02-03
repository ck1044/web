import 'package:flutter/material.dart';
import 'package:toonflixx/widget/button.dart';
import 'package:toonflixx/widget/currenct_card.dart';

void main() {
  runApp(App());
}
//app()은 루트 -> 디자인 choose해야함 -> return MaterialAPP

//모든게 위젯이다..
// 위젯 type. 많다. 레고블럭
class App extends StatelessWidget {
  @override //statelessWidget의 build메소드 오버라이딩 한다. 화면띄워주는 위젯임.
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF181818),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
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
                          'hello kyum',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Text(
                          'Welcome back to flutter',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 18,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 70,
                ),
                Text(
                  'Total Balance',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white.withOpacity(0.8),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  '\$ 512 33 222',
                  style: TextStyle(
                    fontSize: 44,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Button(
                      text: "Transfer",
                      bgColor: Colors.amber,
                      txColor: Colors.black,
                    ),
                    Button(
                      text: "Request",
                      bgColor: Color(0xFF1F2123),
                      txColor: Colors.white,
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
                      'Wallet',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 48,
                      ),
                    ),
                    Text(
                      'View all',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const CurrencyCard(
                  isInverted: false,
                  name: 'Euro',
                  code: 'Eur',
                  amount: '6 428',
                  icon: Icons.euro_rounded,
                ),
                const CurrencyCard(
                  x: 0,
                  y: -20,
                  isInverted: true,
                  name: 'Bitcoin',
                  code: 'Eur',
                  amount: '6 428',
                  icon: Icons.currency_bitcoin_rounded,
                ),
                const CurrencyCard(
                  x: 0,
                  y: -40,
                  isInverted: false,
                  name: 'Dollar',
                  code: 'USD',
                  amount: '6 428',
                  icon: Icons.attach_money_rounded,
                ),
              ],
            ),
          ),
        ),
      ),
    );

    //return material(구글스타일)이랑 cupertino(ios스타일) 둘 중 하나를 리턴한다.
  }
}
//scafford 구조를 가져야 한다.
//모든 파라미터 주고받는건 클래스로 주고받는다 -> 클래스 생성 -> 위젯생성하려고 extends StatelessWidget을 생성했다.
//위의 Sta~ 쓸려면 build methon 써야한다.
