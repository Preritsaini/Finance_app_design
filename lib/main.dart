import 'dart:math';

import 'package:finance_app/cards.dart';
import 'package:finance_app/settings.dart';
import 'package:finance_app/statics.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  List<IconData> icons = [
    Icons.arrow_upward,
    Icons.arrow_downward,
    CupertinoIcons.money_dollar_circle,
    Icons.upload
  ];
  List<String> iconname = ['Sent', 'Receive', 'Loan', 'Topup'];
  List<String> images = [
    'https://i.ibb.co/HdbVL3k/download-1.jpg',
    'https://i.ibb.co/vx79f8F/download-2.png',
    'https://i.ibb.co/ZVpJh5z/download-3.png',
    'https://i.ibb.co/NpNCN4Y/download-2.jpg'
  ];
  List<String> title = ['Apple', 'Spotify', 'Grocery', 'Amazon'];
  List<String> subtitle = ['Entertainment', 'Music', 'Shopping', 'Transaction'];
  List<String> trailing = ['-\$15.99', '-\$20.03', '-\$1000', '-\$1500'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    radius: 27,
                    backgroundImage: NetworkImage(
                        'https://i.ibb.co/5FjqvZQ/jurica-koletic-7-YVZYZe-ITc8-unsplash-1-1.jpg'),
                  ),
                  title: Text(
                    'Welcome back',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                        fontWeight: FontWeight.normal),
                  ),
                  subtitle: Text(
                    'Brooklyn Simmons',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  trailing: CircleAvatar(
                    backgroundColor: Colors.grey[200],
                    child: Icon(Icons.search),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: double.infinity,
                    height: 230,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.blue[900],
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.blue.shade900, Colors.blue.shade600],
                        )),
                    child: Column(
                      children: [
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Transform.rotate(
                                  angle: pi / 2,
                                  child: Icon(
                                    Icons.sim_card_outlined,
                                    color: Colors.grey,
                                    size: 30,
                                  )),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 30),
                              child: Transform.rotate(
                                  angle: pi / 2,
                                  child: Icon(
                                    Icons.wifi,
                                    color: Colors.grey,
                                    size: 30,
                                  )),
                            )
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              '4562',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text('1122',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600)),
                            Text('4595',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600)),
                            Padding(
                              padding: const EdgeInsets.only(right: 5.0),
                              child: Text('1122',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600)),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 31.0),
                              child: Text(
                                'Brooklyn Simmons',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            SizedBox(width: 30),
                            Column(
                              children: [
                                Text(
                                  'Expiry date',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Text(
                                  '24/2026',
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                            SizedBox(width: 30),
                            Column(
                              children: [
                                Text(
                                  'CVV',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Text(
                                  '6960',
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                            SizedBox(width: 80),
                            Column(
                              children: [
                                Container(
                                  height: 60,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              'https://i.ibb.co/BNs2wNt/download-removebg-preview.png'))),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    children: [
                      ...List.generate(
                          4,
                          (index) => Row(
                                children: [
                                  Column(
                                    children: [
                                      CircleAvatar(
                                        radius: 35,
                                        backgroundColor: Colors.grey[100],
                                        child: Icon(
                                          icons[index],
                                          size: 25,
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(iconname[index])
                                    ],
                                  ),
                                  SizedBox(
                                    width: 25,
                                  )
                                ],
                              )),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Transaction',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                      TextButton(onPressed: () {}, child: Text('see all'))
                    ],
                  ),
                ),
                ...List.generate(
                    4,
                    (index) => ListTile(
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(images[index]),
                          ),
                          title: Text(
                            title[index],
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            subtitle[index],
                            style: TextStyle(fontSize: 13),
                          ),
                          trailing: Text(
                            trailing[index],
                            style: TextStyle(fontSize: 15),
                          ),
                        ))
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
          switch (index) {
            case 0:
              // Navigate to Chats screen
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => MyHomePage(title: ''),
                ),
              );
              break;
            case 1:
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => CardScreen(),
                ),
              );
              break;
            case 2:
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => statics(),
                ),
              );
              break;
            case 3:
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => Settings(),
                ),
              );
              break;
          }
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pie_chart_outline),
            label: 'Statics',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card),
            label: 'My Cards',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
