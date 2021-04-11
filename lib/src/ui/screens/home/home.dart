import 'package:app_ui_01/src/ui/screens/home/tab_account.dart';
import 'package:app_ui_01/src/ui/screens/home/tab_card.dart';
import 'package:app_ui_01/src/ui/screens/home/tab_home.dart';
import 'package:app_ui_01/src/ui/screens/home/tab_news.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeSreen extends StatefulWidget  {
  @override
  _HomeSreenState createState() => _HomeSreenState();
} 

class _HomeSreenState extends State<HomeSreen>{
  String _select = '1';
  List<String> choices = ['1', '2', '3'];
  int indexTab = 0;
  List<Widget> bottomTab = <Widget>[TabHome(),TabCart(), TabNews(), TabAccount()];
    @override
    Widget build(BuildContext context) {
      
      return Scaffold(
        appBar: AppBar(
          title: Text('Home page', style: TextStyle(color: Colors.black)),
          backgroundColor: Colors.grey,
          elevation: 0.0,
          leading: IconButton(
             icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          actions: <Widget>[
             PopupMenuButton<String>(
              color: Colors.red,
              onSelected: (seleted) {
                setState(() {
                  _select = seleted;
                });
              },
              itemBuilder: (BuildContext context) {
                return choices.skip(2).map((String choice) {
                  return PopupMenuItem<String>(
                      value: choice, child: Text(choice));
                }).toList();
              },
            ),
          ],
  
        ),
        body: bottomTab[indexTab],
         bottomNavigationBar: BottomNavigationBar(
          items: [
            new BottomNavigationBarItem(backgroundColor: Colors.red[200], icon: Icon(Icons.home), label: 'Home'),
            new BottomNavigationBarItem(icon: Icon(Icons.shop), label: "Cart"),
            new BottomNavigationBarItem(icon: Icon(Icons.access_alarm), label: "News"),
            new BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: "Account")
          ],
          currentIndex: indexTab,
          onTap: (index) {
            setState(() {
              indexTab = index;
            });
          },
        ),
      );
    }
  
  }
  
 


