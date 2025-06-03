// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// import 'counter_bloc.dart';
// import 'counter_bloc_2.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MultiBlocProvider(
//       providers: [
//         BlocProvider(create: (context) => CounterBloc(), child: Screen1()),
//         BlocProvider(create: (context) => CounterBloc2(), child: Screen2()),
//       ],
//       child: MaterialApp(
//         title: 'Flutter BLoC Example',
//         initialRoute: '/screen1',
//         routes: {
//           '/screen1': (context) => Screen1(),
//           '/screen2': (context) => Screen2(),
//         },
//       ),
//     );
//   }
// }
//
// class Screen1 extends StatelessWidget {
//   const Screen1({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Screen 1')),
//       body: BlocBuilder<CounterBloc2, CounterState2>(
//         builder: (context, state) {
//           return Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   'Counter 1: ${state.counter}',
//                   style: TextStyle(fontSize: 24),
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     IconButton(
//                       icon: Icon(Icons.add),
//                       onPressed: () {
//                         BlocProvider.of<CounterBloc2>(
//                           context,
//                         ).add(IncrementCounter2());
//                       },
//                     ),
//                     IconButton(
//                       icon: Icon(Icons.remove),
//                       onPressed: () {
//                         BlocProvider.of<CounterBloc2>(
//                           context,
//                         ).add(DecrementCounter2());
//                       },
//                     ),
//                   ],
//                 ),
//                 ElevatedButton(
//                   onPressed: () {
//                     Navigator.pushNamed(context, '/screen2');
//                   },
//                   child: Text('Go to Screen 2'),
//                 ),
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
//
// class Screen2 extends StatelessWidget {
//   const Screen2({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Screen 2')),
//       body: BlocBuilder<CounterBloc2, CounterState2>(
//         builder: (context, state) {
//           return Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   'Counter 2: ${state.counter}', // Display the counter from CounterBloc2
//                   style: TextStyle(fontSize: 24),
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     IconButton(
//                       icon: Icon(Icons.add),
//                       onPressed: () {
//                         // Increment the counter by dispatching IncrementCounter2
//                         BlocProvider.of<CounterBloc2>(
//                           context,
//                         ).add(IncrementCounter2());
//                       },
//                     ),
//                     IconButton(
//                       icon: Icon(Icons.remove),
//                       onPressed: () {
//                         // Decrement the counter by dispatching DecrementCounter2
//                         BlocProvider.of<CounterBloc2>(
//                           context,
//                         ).add(DecrementCounter2());
//                       },
//                     ),
//                   ],
//                 ),
//                 ElevatedButton(
//                   onPressed: () {
//                     Navigator.pushNamed(
//                       context,
//                       '/screen1',
//                     ); // Navigate back to Screen 1
//                   },
//                   child: Text('Go to Screen 1'),
//                 ),
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

import 'core/di/injector.dart' as di;
import 'feature/home/presentation/screens/post_screen.dart';

void main() {
  di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: PostScreen());
  }
}
