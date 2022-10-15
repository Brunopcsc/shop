import 'package:flutter/material.dart';
import 'package:shop/providers/counter.dart';

import '../models/product.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  @override
  Widget build(BuildContext context) {
    var provider = CounterProvider.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Exemplo contador'),
      ),
      body: Column(children: [
        Text(provider?.state.value.toString() ?? '1'),
        IconButton(
          onPressed: () {
            setState(() {
              CounterProvider.of(context)?.state.inc();
            });
          },
          icon: Icon(Icons.add),
        ),
        IconButton(
          onPressed: () {
            setState(() {
              provider?.state.dec();
            });
          },
          icon: Icon(Icons.remove),
        ),
      ]),
    );
  }
}
