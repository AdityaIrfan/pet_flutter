import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'page/select.dart';
import 'page/discover.dart';
import 'assets/myicons.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentTab = 0;
  final List<Widget> screens = [Select(), Discover()];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget _currentScreen = Select();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Container(
          margin: EdgeInsets.only(bottom: 10),
          child: Padding(
              padding:
                  EdgeInsets.only(top: MediaQuery.of(context).size.height / 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  selectButton(),
                  Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width / 50)),
                  discoverButton()
                ],
              )),
        ),
        actions: <Widget>[
          Container(
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.width / 40),
            padding:
                EdgeInsets.only(right: MediaQuery.of(context).size.width / 27),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  Icons.notifications,
                  size: MediaQuery.of(context).size.height / 25,
                  color: Colors.black,
                )
              ],
            ),
          )
        ],
        centerTitle: true,
      ),
      body: PageStorage(bucket: bucket, child: _currentScreen),
    );
  }

  MaterialButton selectButton() =>
      _usefullMaterialButton(Select(), 0, MyIcons.ellipse(), 'Select');

  MaterialButton discoverButton() =>
      _usefullMaterialButton(Discover(), 1, MyIcons.notification(), 'Discover');

  MaterialButton _usefullMaterialButton(Widget currentScreen, int currentTab,
          SvgPicture icon, String title) =>
      MaterialButton(
        onPressed: () {
          setState(() {
            _currentScreen = currentScreen;
            _currentTab = currentTab;
          });
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                  color: _currentTab == currentTab ? Colors.black : Colors.grey,
                  fontSize: MediaQuery.of(context).size.width / 23),
            ),
            Container(
              margin: EdgeInsets.only(top: 5),
              width: 50,
              height: 5,
              color: _currentTab == currentTab ? Colors.black : Colors.white,
            )
          ],
        ),
      );
}
