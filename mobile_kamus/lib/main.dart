import 'package:flutter/material.dart';
import 'package:mobile_kamus/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
    //   title: 'Dictionary Belanda - Indonesia',
    //   theme: ThemeData(
    //     colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    //     useMaterial3: true,
    //   ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}


class PageUtama extends StatelessWidget {
  const PageUtama({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(
          'yhgygy'
        ),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              'gktihjy',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}


// import 'dart:async';
// import 'package:flutter/material.dart';
//
// class SplashScreen extends StatefulWidget {
//   @override
//   _SplashScreenState createState() => _SplashScreenState();
// }
//
// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     super.initState();
//     // Delay untuk menampilkan splash screen selama 3 detik
//     Timer(Duration(seconds: 3), () {
//       // Pindah ke halaman berikutnya (misalnya halaman utama)
//       Navigator.pushReplacementNamed(context, '/home');
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             // Tambahkan gambar splash screen di sini
//             Image.asset('assets/images/kamus2-Photoroom.png'),
//             SizedBox(height: 20),
//             CircularProgressIndicator(), // Tambahkan indikator loading jika diperlukan
//           ],
//         ),
//       ),
//     );
//   }
// }

