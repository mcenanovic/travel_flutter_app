import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_app/widgets/destination_carousel.dart';
import 'package:travel_app/widgets/hotel_carousel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _selectedIndex = 0;
  var _currentTab = 0;

  List<IconData> _icons = [
    FontAwesomeIcons.plane,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.walking,
    FontAwesomeIcons.biking
  ];

  Widget _buildIcon(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
          color: _selectedIndex == index
              ? Theme.of(context).accentColor
              : Color(0xFFE7EBEE),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Icon(
          _icons[index],
          size: 25.0,
          color: _selectedIndex == index
              ? Theme.of(context).primaryColor
              : Color(0xFFB4C1C4),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: ListView(
            padding: EdgeInsets.symmetric(vertical: 30.0),
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 80.0),
                child: Text(
                  'What would you like to find?',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: _icons
                    .asMap()
                    .entries
                    .map((MapEntry map) => _buildIcon(map.key))
                    .toList(),
              ),
              SizedBox(height: 20.0),
              DestinationCarousel(),
              SizedBox(height: 20.0),
              HotelCarousel(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentTab,
          onTap: (int value) {
            setState(() {
              this._currentTab = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: SizedBox(
                height: 10.0,
                child: Icon(
                  Icons.search,
                  size: 30.0,
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SizedBox(
                height: 10.0,
                child: Icon(
                  Icons.local_pizza,
                  size: 30.0,
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SizedBox(
                height: 10.0,
                child: Icon(
                  Icons.account_box,
                  size: 30.0,
                ),
              ),
              label: '',
            ),
          ],
        ));
  }
}
