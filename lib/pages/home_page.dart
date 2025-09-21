import 'package:flutter/material.dart';
import 'package:sneaker_house/pages/cart_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(35, 10, 35, 10),
              child: TextField(

                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.black,width: 2),
                  ),
                  hintText: "Search",
                  suffixIcon: Icon(Icons.search),
                  fillColor: Colors.grey[200],
                  contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 4),
                ),
              ),
            )
            //       Container(
            //         margin: EdgeInsets.fromLTRB(40, 10, 20, 40),
            //         padding:  EdgeInsets.fromLTRB(110, 4, 150, 4),
            //         decoration: BoxDecoration(
            //           color: Colors.grey,
            //           borderRadius: BorderRadius.circular(10)
            //         ),
            //           child:TextField(
            //             decoration: InputDecoration(
            //               hintText: 'Search',
            //             ),
            //           ),
            //
            // ),
            ],


        ),
      ),
    );
  }
}
