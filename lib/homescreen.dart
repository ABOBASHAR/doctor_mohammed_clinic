import 'package:flutter/material.dart';
import 'kalb.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // الخلفية
          Positioned.fill(
            child: Image.asset(
              'background.jpg', // غير الاسم إذا لازم
              fit: BoxFit.cover,
            ),
          ),

          // طبقة غامقة لتوضيح النصوص
          Positioned.fill(
            child: Container(
              // ignore: deprecated_member_use
              color: Colors.black.withOpacity(0.4),
            ),
          ),

          // المحتوى فوق الخلفية
          Positioned.fill(
            child: SafeArea(
              child: Column(
                children: [
                  const SizedBox(height: 16),

                  // شعار Doctune
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 24),
                      Icon(Icons.favorite, color: Color(0xFFB2FF59), size: 24),
                      SizedBox(width: 8),
                      Text(
                        "Doctune",
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFFB2FF59),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                  const Spacer(),

                  // النصوص
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      children: [
                        Text(
                          'Let us be your guide\nin healthcare journey',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            height: 1.5,
                          ),
                        ),
                        SizedBox(height: 16),
                        Text(
                          'No more hassle to schedule an appointment\nwith your doctor, now it\'s quick and simple!',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white70,
                            height: 1.5,
                          ),
                        ),
                        SizedBox(height: 30),
                      ],
                    ),
                  ),

                  // زر Get started
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Kalb()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFB2FF59),
                      foregroundColor: Colors.black,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      elevation: 4,
                    ),
                    child: const Text(
                      'Get started',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
