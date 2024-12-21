import 'package:flutter/material.dart';
import 'package:wedsnap/util/square_card.dart';

class FavoritePage extends StatelessWidget {
  final themeList =[];
  final String categoryName;
  final TextEditingController controller = TextEditingController();
  FavoritePage({super.key, required this.categoryName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Padding(padding: EdgeInsets.only(left: 10.0),
          child: TextField(
            controller: controller,
            style: TextStyle(
              color: Colors.white,
            ),
            decoration: InputDecoration(
              hintText: 'Search Category',
              hintStyle: TextStyle(
                color: Colors.white
              ),
              border: InputBorder.none,
              icon: Icon(Icons.search, color: Colors.white,)
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 5), 
            itemCount: 10,
          itemBuilder: (context, index){
            return SquareCard();
          }
          ),
      ),
    );
  }
}