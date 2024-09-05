import 'package:app_orisinil_mas_farid/contact_dart.dart';
import 'package:flutter/material.dart';

class Intro3 extends StatelessWidget {
  const Intro3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Menambahkan padding ke seluruh body
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Gambar
            Image.asset(
              'image/p.gif',
              height: 300,
            ),
            const SizedBox(height: 20),

            // Title
            const Text(
              'Get a Vaccine Certificate',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),

            // Deskripsi
            const Text(
              'With a vaccine certificate you can travel with your family safely and keep the health protocols.',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),

            // Row untuk tombol Skip dan Next
           Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Tombol Skip
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Contact();
                    },
                    ));
                  },
                  child: const Text('Skip'),
                ),

                // Tombol Next
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Contact();
                    }));
                  },
                  child: const Text('Next'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
