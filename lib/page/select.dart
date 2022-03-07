import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Select extends StatefulWidget {
  const Select({Key? key}) : super(key: key);

  @override
  State<Select> createState() => _SelectState();
}

class _SelectState extends State<Select> {
  double sizeWidth(int width) => MediaQuery.of(context).size.width / width;
  double sizeHeight(int height) => MediaQuery.of(context).size.width / height;
  Padding heightPadding(int height) => Padding(
      padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height / height));
  Padding widthPadding(int width) => Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width / width));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: sizeWidth(20), vertical: sizeHeight(15)),
            height: sizeHeight(9),
            child: TextFormField(
              decoration: const InputDecoration(
                  fillColor: Color.fromARGB(13, 0, 0, 0),
                  filled: true,
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  hintText: 'Send the sample',
                  hintStyle: TextStyle(color: Colors.grey, height: 3),
                  suffixIcon: Icon(
                    Icons.keyboard_voice,
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                  )),
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                rankingButton(),
                discussButton(),
                surroundingButton()
              ],
            ),
          ),
          heightPadding(20),
          Center(
            child: Text(
              'Carousel Slider',
              style: TextStyle(color: Colors.black),
            ),
          ),
          content(),
          content(),
          content(),
          content(),
          content(),
          content(),
          content(),
          content(),
          content(),
          content(),
          content(),
        ],
      ),
    );
  }

  MaterialButton rankingButton() =>
      _usefullMaterialButton(Icons.access_time, 'Ranking');

  MaterialButton discussButton() =>
      _usefullMaterialButton(Icons.chat, 'Discuss');

  MaterialButton surroundingButton() =>
      _usefullMaterialButton(Icons.shopping_basket, 'Surrounding');

  MaterialButton _usefullMaterialButton(IconData icon, String title) =>
      MaterialButton(
        onPressed: () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.black,
            ),
            Text(
              title,
              style: TextStyle(color: Colors.black),
            )
          ],
        ),
      );

  Container content() => Container(
        margin: EdgeInsets.symmetric(
          horizontal: sizeWidth(20),
          vertical: sizeWidth(20),
        ),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.person,
                      color: Colors.black,
                      size: sizeWidth(13),
                    ),
                    widthPadding(70),
                    Text(
                      'Aditya Irfan',
                      style: TextStyle(
                          color: Colors.black, fontSize: sizeWidth(22)),
                    )
                  ],
                ),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Follow',
                        style: TextStyle(fontSize: sizeWidth(27)),
                      ),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromARGB(229, 250, 103, 80))),
                    )
                  ],
                ),
              ],
            ),
            heightPadding(60),
            Row(
              children: [
                Text(
                  'Addwork Keyword Research For Beginners.',
                  style: TextStyle(
                      color: Color.fromARGB(210, 0, 0, 0),
                      fontSize: sizeWidth(25)),
                )
              ],
            ),
            heightPadding(60),
            Container(
              child: Image.network(
                'https://p4.wallpaperbetter.com/wallpaper/1006/87/624/zermatt-valley-switzerland-wallpaper-preview.jpg',
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
              ),
            )
          ],
        ),
      );
}
