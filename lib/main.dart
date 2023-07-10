import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'pages/pages.dart';
import 'store/store.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<PomodoroStore>(
          create: (context) => PomodoroStore(),
        ),
      ],
      child: MaterialApp(
        title: 'Pomodoro Timer',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const Pomodoro(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

// import 'package:pomodoro/store/contador.store.dart';
// import 'package:flutter_mobx/flutter_mobx.dart';

// final store = ContadorStore();

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'Você apertou o botão essa quantidade de vezes:',
//             ),
//             Observer(
//               builder: (_) {
//                 return Text(
//                   '${store.contador}',
//                   style: Theme.of(context).textTheme.headlineMedium,
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: store.incrementar,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), //
//     );
//   }
// }
