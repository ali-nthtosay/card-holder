import 'package:card_holder/pages/scan_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatefulWidget {
  static const String routeName = '/' ;
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
    int selectedIndex = 0 ;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
                    GoRouter.of(context).go('/scan');
        },
        shape: const CircleBorder(),
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomAppBar(
        padding: EdgeInsets.zero,
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        clipBehavior: Clip.antiAlias,
        child: BottomNavigationBar(
          backgroundColor: Colors.blue[100],
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          currentIndex: selectedIndex,
          items: [
            BottomNavigationBarItem(
                icon:Icon(Icons.person, color: Colors.black,),
            label: 'All'
            ),
          BottomNavigationBarItem(icon:
          Icon(Icons.favorite , color: Colors.black,),
          label: 'Favorites'
          )
        ],

        ),
      ),
      appBar: AppBar(
        title: Text('Contact List'),
      ),
    );
  }
}
