import 'package:finance_app/main.dart';
import 'package:finance_app/settings.dart';
import 'package:finance_app/statics.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  @override
  Widget build(BuildContext context) {
    int _currentIndex = 1;

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            SizedBox(height: 20),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: CircleAvatar(
                      backgroundColor: Colors.grey[300],
                      child: Icon(Icons.keyboard_arrow_left),
                    ),
                  ),
                  Text(
                    'Wallet',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 19),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: CircleAvatar(
                      backgroundColor: Colors.grey[300],
                      child: Icon(Icons.notifications_outlined),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Current Balance',
              style: TextStyle(fontSize: 19, color: Colors.grey[800]),
            ),
            Text(
              '\$18545.00',
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
            ),
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://i.ibb.co/4N3Bm9K/Screenshot-from-2024-04-13-00-16-55.png'))),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(children: [
                  ...List.generate(
                      months.length,
                      (index) => TextButton(
                          onPressed: () {},
                          child: Text(
                            months[index],
                            style: TextStyle(color: Colors.grey, fontSize: 16),
                          )))
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(9.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Transaction',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
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
        )),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
          switch (index) {
            case 0:
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
            label: 'My  Cards',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            label: 'Settings',
          ),
        ],
      ),
    );
  }

  List<String> months = [
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'May',
    'Jun',
    'Jul',
    'Aug',
    'Sep',
    'Oct',
    'Nov',
    'Dec'
  ];
  List<String> images = [
    'https://i.ibb.co/HdbVL3k/download-1.jpg',
    'https://i.ibb.co/vx79f8F/download-2.png',
    'https://i.ibb.co/ZVpJh5z/download-3.png',
    'https://i.ibb.co/NpNCN4Y/download-2.jpg'
  ];
  List<String> title = ['Apple', 'Spotify', 'Grocery', 'Amazon'];
  List<String> subtitle = ['Entertainment', 'Music', 'Shopping', 'Transaction'];
  List<String> trailing = ['-\$15.99', '-\$20.03', '-\$1000', '-\$1500'];
}
