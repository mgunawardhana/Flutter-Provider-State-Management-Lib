import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'features/counter/presentation/pages/counter_page.dart';
import 'features/counter/data/counter_repository.dart';
import 'features/counter/presentation/state/counter_controller.dart';

//TODO: ✅ 🔥 WHAT YOU DID VERY WELL

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        /** 1. Receives signal
            2. Finds all widgets that are LISTENING
            3. Rebuilds ONLY those widgets */
        ChangeNotifierProvider(
          /** container that create controller, stores it, gives it to all widgets below
          listens to notifyListners() rebuild ui automatically */
          create: (_) => CounterController(CounterRepository()),
          /** this says create: (_) => CounterController(CounterRepository()), When app starts, create this object*/
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: CounterPage(),
      ),
    );
  }
}
