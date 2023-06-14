import 'package:app_login/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:app_login/src/utils/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      defaultTransition: Transition.leftToRightWithFade,
      transitionDuration: const Duration(milliseconds: 500),
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: SplashScreen(),
    );
  }
}

// class AppHome extends StatelessWidget {
//   const AppHome({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // backgroundColor: Theme.of(context).backgroundColor,
//       appBar: AppBar(
//         title: Text('./appable'),
//         leading: const Icon(Icons.ondemand_video),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {},
//         child: const Icon(Icons.add_shopping_cart),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20),
//         child: ListView(
//           children: [
//             Text(
//               "Heading",
//               style: Theme.of(context).textTheme.headlineLarge,
//             ),
//             Text(
//               "sub heading",
//               style: Theme.of(context).textTheme.titleMedium,
//             ),
//             Text(
//               "Paragraph",
//               style: Theme.of(context).textTheme.bodyMedium,
//             ),
//             ElevatedButton(
//                 onPressed: () {}, child: const Text("ElevatedButton")),
//             OutlinedButton(
//                 onPressed: () {}, child: const Text("Outlined Button")),
//             const Padding(
//               padding: const EdgeInsets.all(20),
//               child: Image(image: AssetImage('assets/images/books.jpg')),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
