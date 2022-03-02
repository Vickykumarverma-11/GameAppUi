import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.account_circle_outlined),
          centerTitle: true,
          title: const Text(
            'Register',
            style: TextStyle(fontSize: 30),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.card_membership_outlined),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.message_outlined),
            ),
          ],
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.purple, Colors.red],
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.pink,
                  spreadRadius: 10,
                  blurRadius: 50,
                )
              ],
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'lib/assets/logo.png',
                width: 100,
                height: 100,
              ),
              const SizedBox(height: 10),
              const Text(
                'Data not found',
                style: TextStyle(fontSize: 25),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: const Icon(Icons.home),
              label: 'Home',
              activeIcon: Container(
                width: 70,
                height: 70,
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.pink,
                      spreadRadius: 0,
                      blurRadius: 30,
                    )
                  ],
                  gradient: LinearGradient(
                    colors: [Colors.purple, Colors.red],
                  ),
                  shape: BoxShape.circle,
                ),
                child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: Icon(Icons.home),
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.pink,
                      spreadRadius: 0,
                      blurRadius: 30,
                    )
                  ],
                  border: Border.all(color: Colors.purple),
                  shape: BoxShape.circle,
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8),
                  child: Icon(Icons.home),
                ),
              ),
              label: 'Contest',
            ),
            BottomNavigationBarItem(
              icon: Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.pink,
                      spreadRadius: 0,
                      offset: Offset(0.0, 3),
                      blurRadius: 30,
                    )
                  ],
                  border: Border.all(color: Colors.purple),
                  shape: BoxShape.circle,
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8),
                  child: Icon(Icons.account_balance_wallet_outlined),
                ),
              ),
              label: 'Wallet',
            ),
            BottomNavigationBarItem(
              icon: Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.pink,
                      spreadRadius: 0,
                      offset: Offset(0.0, 3),
                      blurRadius: 30,
                    )
                  ],
                  border: Border.all(color: Colors.purple),
                  shape: BoxShape.circle,
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8),
                  child: Icon(Icons.account_balance_wallet_outlined),
                ),
              ),
              label: 'Wallet',
            ),
          ],
        ),
      ),
    );
  }
}
