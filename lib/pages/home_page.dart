import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:wedsnap/util/circle_card.dart';
import 'package:wedsnap/util/rectangle_card.dart';
import 'package:wedsnap/util/square_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final List<Map<String, dynamic>> categories = [
    {'icon': Icons.account_balance, 'name': 'Traditional'},
    {'icon': Icons.nature, 'name': 'Rustic Charm'},
    {'icon': Icons.design_services, 'name': 'Modern Minimalist'},
    {'icon': Icons.museum, 'name': 'Cultural Heritage'},
  ];

  signOut() async {
    await FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        actions: [
          IconButton(
            onPressed: (){
              //controller.clear();
            }, 
            icon: Icon(Icons.search,
            color: Colors.white,)
            )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              //category card
              SizedBox(
                height: 100,
                child: ListView.builder(
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return CircleCard(
                        icon: categories[index]['icon'],
                        categoryName: categories[index]['name'],
                      );
                    }),
              ),
              //trending card
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Trending",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 120,
                    child: ListView.builder(
                        itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return RectangleCard(
                            categoryName: categories[index]['name'],
                          );
                        }),
                  ),
                ],
              ),
              //Inspiration card
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Inspiration",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 170,
                    child: ListView.builder(
                        itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return SquareCard();
                        }),
                  ),
                ],
              ),
              //trending card
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Trending",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 120,
                    child: ListView.builder(
                        itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return RectangleCard(
                            categoryName: categories[index]['name'],
                          );
                        }),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (() => signOut()),
        tooltip: 'Sign Out',
        child: Icon(Icons.logout),
      ),
    );
  }}