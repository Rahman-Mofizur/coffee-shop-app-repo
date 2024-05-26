import 'package:coffee_shop_app/pages/listview.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCoffeeShop extends StatefulWidget {
  const MyCoffeeShop({super.key});

  @override
  State<MyCoffeeShop> createState() => _MyCoffeeShopState();
}

class _MyCoffeeShopState extends State<MyCoffeeShop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],

      // AppBar
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: const Padding(
          padding: EdgeInsets.all(25.0),
          child: Icon(
            Icons.menu,
            size: 32,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(25.0),
            child: Icon(
              Icons.person,
              size: 32,
            ),
          ),
        ],
      ),

      // Body
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
            child: Text(
              'Find the best coffee for you',
              style: GoogleFonts.bebasNeue(fontSize: 50),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: 'Find Your Coffee...',
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                  borderRadius: BorderRadius.circular(20),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),

          const SizedBox(
            height: 20,
          ),
          // Slider
          const MyListView(),
        ],
      ),

      // Bottom Bar
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.shopify_outlined),
          //   label: '',
          // ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: '',
          ),
        ],
      ),
    );
  }
}
