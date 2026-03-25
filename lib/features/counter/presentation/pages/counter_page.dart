import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_app/features/counter/presentation/state/counter_controller.dart';
import '../widgets/counter_card.dart';

/// “Which widget is listening?” The widget where this line is written is the listener
class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /** final controller = Provider.of<CounterController>(context); -
     *  “Hey Provider, give me the CounterController” */

    final controller = Provider.of<CounterController>(context);

    /// Provider.of<CounterController>(context) - "Rebuild THIS widget when data changes"
    return Scaffold(
      appBar: AppBar(title: Text('Provider Counter')),
      body: Center(
        child: CounterCard(
          value: controller.value,
          onIncrement: controller.increment,
          onDecrement: controller.decrement,
        ),
      ),
    );
  }
}
