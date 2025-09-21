import 'package:flutter/material.dart';
import 'cart_page.dart';
import 'home_page.dart';

class BasePage extends StatefulWidget {
  const BasePage({super.key});

  @override
  State<BasePage> createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  var _currentIndex=0;
  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [ HomePage(), CartPage(),];
    return Scaffold(
      appBar: AppBar(
        title: Container(
          padding: EdgeInsets.fromLTRB(110, 20, 150, 20),
          child: Image.asset('lib/image/sneaker_house_logo.png'
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
          drawer: Drawer(
            backgroundColor: Colors.white,
            child: Column(
              children: [
                DrawerHeader(child: Container(
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Image.asset('lib/image/sneaker_house_logo.png'
                  ),
                ),),

                ListTile(
                  leading: Icon(Icons.home_filled),
                  title: Text("Home"),
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text("Setting"),
                ),
              ],
            ),
          ),
        body:pages[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index){
            setState((){
              _currentIndex=index;
            },);
          },
          backgroundColor: Colors.grey[100],
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: "Home",
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart,),
              label: "Cart",
            ),
          ],

          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black87,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: true,

        ),

    );
  }
}
