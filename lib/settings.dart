import 'package:finance_app/cards.dart';
import 'package:finance_app/statics.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  List<String> title = ['Help and support','UPI and payment Settings','Link credit card','Orders and bookings',
  'Tap to Pay','Profile Settings','Invest and Trade','Improved loan amount','Refer and win','Locker'];
  List<String> subtitle = ['Costumer support,Your Queries,Frequently asked questions',
  'Change UPI PIN,Linked bnk accounts,Autometic Payments & Subcriptions',
  'Pay any UPI QR code with your credit card',
  'Recharge,Bill Payments,Shopping ,Movie and others ',
  'Scratchcards',
  'Activate new or manage existing contacts',
  'Profile,Adresses,Security and privacy',
  'Stocks,Mutual funds and others',
  'Up to \$5 millions',
  'Win a cashback'];
  List<IconData> leading = [Icons.help_outline,CupertinoIcons.money_dollar_circle,CupertinoIcons.creditcard,
  CupertinoIcons.book,CupertinoIcons.return_icon,Icons.signal_cellular_0_bar,CupertinoIcons.person,Icons.upload,
  CupertinoIcons.location_north,Icons.blur_on];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Text('Settings',style: TextStyle(color: Colors.white),),
        centerTitle: true,
        leading: InkWell(onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => statics()));
        },
            child: Icon(Icons.arrow_back,color: Colors.white,))
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(height: 20),
          CircleAvatar(radius: 100,
            backgroundImage: NetworkImage('https://i.ibb.co/5FjqvZQ/jurica-koletic-7-YVZYZe-ITc8-unsplash-1-1.jpg'),),
          SizedBox(height: 10),
          Text('Brooklyn Simmons',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
          SizedBox(height: 20),
          Divider(),
          ...List.generate(10, (index) => Column(
            children: [
              ListTile(
                title: Text(title[index]),
                subtitle: Text(subtitle[index]),
                leading: Icon(leading[index]),
                isThreeLine: true,
                onTap: (){},
              ),
              Divider()
            ],
          )),
        ],),
      ),
    );
  }
}
