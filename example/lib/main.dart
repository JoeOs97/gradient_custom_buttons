import 'package:flutter/material.dart';
import 'package:gradiant_different_size_buttons/gradiant_different_size_buttons.dart';

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
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('CircleButton'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleButton(
              iconColor: Colors.blue,
              linearGradient: const LinearGradient(
                  colors: [Color(0xFFf857a6), Color(0xFFff5858)]),
              onPressed: () {},
              width: 150,
              height: 50,
              buttonChild: const Center(
                child: Center(
                    child: Icon(
                  Icons.add,
                )),
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            const SizedBox(
              height: 10,
            ),
            CircleButton(
              linearGradient: const LinearGradient(
                  colors: [Color(0xFFDE6262), Color(0xFFFFB88C)]),
              onPressed: () {},
              width: 100,
              height: 50,
              buttonChild: const Center(
                child: Center(
                    child: Icon(Icons.access_time_filled_rounded,
                        color: Colors.white)),
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            const SizedBox(
              height: 10,
            ),
            CircleButton(
              linearGradient: const LinearGradient(
                  colors: [Color(0xAAED4264), Color(0xFFFFEDBC)]),
              iconColor: Colors.cyanAccent,
              onPressed: () {},
              width: 50,
              height: 50,
              buttonChild: const Center(
                child: Center(child: Icon(Icons.ac_unit)),
              ),
              borderRadius: BorderRadius.circular(50),
            ),
            const SizedBox(
              height: 10,
            ),
            CircleButton(
              linearGradient: const LinearGradient(
                  colors: [Color(0xAAED4264), Color(0xFFFFEDBC)]),
              onPressed: () {},
              width: 50,
              height: 50,
              buttonChild: Icon(Icons.add_a_photo_rounded , color: Colors.deepPurpleAccent,),
              borderRadius: BorderRadius.circular(50),
            ),
          ],
        ),
      ),
    );
  }
}
