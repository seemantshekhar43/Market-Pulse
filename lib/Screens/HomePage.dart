import 'package:flutter/material.dart';
import 'package:stock_market/Fragments/1_Alert.dart';
import 'package:stock_market/Fragments/2_Scanner.dart';
import 'package:stock_market/Fragments/3_Watchlists.dart';
import 'package:stock_market/Fragments/4_News.dart';
import 'package:stock_market/Fragments/5_Market_Vidhya.dart';
import 'package:stock_market/Models/models.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _fragmentIndex = 2;

  _getFragment(int position) {
    switch (position) {
      case 0:
        return Alert();
        break;
      case 1:
        return Scanner();
        break;
      case 2:
        return Watchlists();
        break;
      case 3:
        return News();
        break;
      case 4:
        return MarketVidhya();
        break;
      default:
        return "Error Ocurred";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getFragment(_fragmentIndex),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.white,
        selectedFontSize: 14.0,
        currentIndex: _fragmentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xff263238),
        iconSize: 20.0,
        //unselectedFontSize: 11.0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.alarm,
            ),
            label: 'Alert',),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add_circle,
              ),
              label: 'Scanner'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.star_border,
              ),
              label: 'Watchlists'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.book,
              ),
              label: 'News'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.menu_book_outlined,
              ),
              label: 'Market Vidhya'),        
        ],
        onTap: (index) {
          setState(() {
            _fragmentIndex = index;
          });
        },
      ),
    );
  }
}
