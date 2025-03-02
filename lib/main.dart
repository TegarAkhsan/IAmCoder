import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("I Am Coder"),
        backgroundColor: Colors.blueAccent,
      ),
      backgroundColor: Colors.deepPurple[50],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/coder.png', width: 150),
            const SizedBox(height: 20),

            // Kontainer Pertama (Teks utama)
            Container(
              width: 350,
              height: 100,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.blue[100],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  '''😴 Debugging adalah seni mengganti satu bug dengan bug lainnya.😁🙏''',
                  textAlign:
                      TextAlign.center, // fungsinya textnya menjadi rata tengah
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight:
                        FontWeight.bold, // menggunakan style huruf tebal (bold)
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Row untuk menampilkan dua Container sejajar
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Kontainer Kiri
                Container(
                  width: 120,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.green[100],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Column(
                    children: [
                      Icon(Icons.code, size: 40, color: Colors.green),
                      SizedBox(height: 8),
                      Text("Full Stuck Mode!",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 14)),
                    ],
                  ),
                ),

                const SizedBox(width: 20),

                // Kontainer Kanan
                Container(
                  width: 120,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.red[100],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Column(
                    children: [
                      Icon(Icons.coffee, size: 40, color: Colors.red),
                      SizedBox(height: 8),
                      Text("Burn Out Mode!",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 14)),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
