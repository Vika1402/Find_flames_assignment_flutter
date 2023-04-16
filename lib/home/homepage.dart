import 'package:flutter/material.dart';
import 'package:frontend_ass/chat_view/chat.dart';

import '../header_file/header.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, dynamic>> items = [
    {
      'name': 'John Doe',
      'image':'https://media.istockphoto.com/id/1270067126/photo/smiling-indian-man-looking-at-camera.jpg?s=612x612&w=0&k=20&c=ovIQ5GPurLd3mOUj82jB9v-bjGZ8updgy1ACaHMeEC0=',
      'icon': 'https://example.com/blue-verify-icon.png'
    },
    {
      'name': 'Jane Smith',
      'image':
          'https://thumbs.dreamstime.com/b/handsome-man-hair-style-beard-beauty-face-portrait-fashion-male-model-black-hair-high-resolution-handsome-man-125031765.jpg'
    },
    {
      'name': 'Bob Johnson',
      'image':
          'https://t4.ftcdn.net/jpg/02/14/74/61/360_F_214746128_31JkeaP6rU0NzzzdFC4khGkmqc8noe6h.jpg'
    },
    {
      'name': 'Alice Brown',
      'image':
          'https://image.shutterstock.com/mosaic_250/2780032/1548802709/stock-photo-headshot-portrait-of-happy-millennial-man-in-casual-clothes-isolated-on-grey-studio-background-1548802709.jpg'
    },
    {
      'name': 'Peter Parker',
      'image':
          'https://media.gettyimages.com/id/1179420343/photo/smiling-man-outdoors-in-the-city.jpg?s=612x612&w=gi&k=20&c=n663L5A4XlwcUvNpX_eu4ur1sMmrD6dt_c1mbWjrLXk='
    },
  ];

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 80,
            color: Colors.white54,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                      'https://images.meesho.com/images/products/193319560/5bxby_512.webp',
                    ),
                  ),
                ),
                Text(
                  'Find Flames',
                  style: TextStyle(
                    color: Colors.pink,
                    fontSize: 25,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Icon(Icons.settings),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.0),
          Container(
            height: 220,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: items.length,
              itemBuilder: (context, index) {
                return _buildCard(items[index]['image'], items[index]['name']);
              },
            ),
          ),
          SizedBox(height: 25.0),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ),
          ),
          SizedBox(height: 0.0),
          Expanded(
            child: ChatList(),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: 'Settings',
          ),

        ],
      ),
    );
  }
}

Widget _buildCard(String imageUrl, String name) {
  return SingleChildScrollView(
    child: Card(
      child: Column(
        children: [
          Image.network(
            imageUrl,
            height: 200,
            width: 200,
            fit: BoxFit.fill,
          ),
          Text(
            name,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    ),
  );
}
