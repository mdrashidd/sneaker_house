import 'package:flutter/material.dart';
class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 100),
          Text(
            "Welcome",
            style: TextStyle(
              color: Colors.black,
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 100),

          Image.asset(
            'lib/image/sneaker_house_logo.png',
            height: 200,
            width: 500,
          ),

          Text(
            "Sneaker House",
            style: TextStyle(
              color: Colors.black,
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(height: 50),

          Text(
            '''       Feel the 
  ..movement..''',
            style: TextStyle(
              color: Colors.grey[350],
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(height: 50),

          ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, '/homepage');
          },
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black87,
                foregroundColor: Colors.white,
                elevation: 4,
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 16,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                )
            ),
            child: Text(
              "       Shop Now       ",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),

        ],
      ),
    );
  }
}
