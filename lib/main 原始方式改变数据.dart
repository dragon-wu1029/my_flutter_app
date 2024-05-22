import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key, required this.title});
//   final String title;

//   @override
//   Widget build(BuildContext context) {
//     int _counter = 0;
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(title),
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//       ),
//       body: Center(
//         child: Column(
//           children: [
//             Text('Home'),
//             Text('Number: $_counter'),
//             IconButton(
//                 onPressed: () {
//                   /// 没有setState方法
//                   // setState(() => _counter++);
//                   /// 值改变了，但是页面上的内容不会改变
//                   _counter++;
//                   print('1111 $_counter');
//                 },
//                 icon: const Icon(Icons.add))
//           ],
//         ),
//       ),
//     );
//   }
// }

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          children: [
            Text('Home'),
            Text('Number: $_counter'),
            IconButton(
                onPressed: () {
                  setState(() => _counter++);
                },
                icon: const Icon(Icons.add))
          ],
        ),
      ),
    );
  }
}
