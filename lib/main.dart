import 'package:firstapp/screen/splash/components/routes.dart';
import 'package:firstapp/screen/theme.dart';
import 'package:flutter/material.dart';
import './screen/splash/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}





// class MyWidget extends StatefulWidget {
//   const MyWidget({super.key});

//   @override
//   State<MyWidget> createState() => _MyWidgetState();
// }

// class _MyWidgetState extends State<MyWidget> {
//   @override
 

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           titre,
//         ),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           child: const Text('mon button'),
//           onPressed: () {
//             setState(() {
//               titre = 'moi meme';
//             });
//           },
//         ),
//       ),
//     );
//   }
// }
