import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/quantity_bloc.dart';
import '../bloc/quantity_event.dart';
import '../bloc/quantity_state.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => QuantityBloc(),
      child: BlocConsumer<QuantityBloc, QuantityState>(
        listener: (context, state) {},
        builder: (context, state) {
          int quantity = state.amount;
          Color color = state.color;

          return Scaffold(
            appBar: AppBar(
              title: const Text('Quantity & Color State Management'),
            ),
            body: Container(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        padding: EdgeInsets.zero,
                        icon: const Icon(Icons.remove_circle, size: 60),
                        onPressed: () {
                          context
                              .read<QuantityBloc>()
                              .add(DecreaseQuantityEvent());
                        },
                      ),
                      const SizedBox(width: 20),
                      Text(
                        '$quantity',
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: color),
                      ),
                      const SizedBox(width: 20),
                      IconButton(
                        padding: EdgeInsets.zero,
                        icon: const Icon(Icons.add_circle, size: 60),
                        onPressed: () {
                          context
                              .read<QuantityBloc>()
                              .add(IncreaseQuantityEvent());
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      context
                          .read<QuantityBloc>()
                          .add(ChangeColorEvent(selectedColor: Colors.red));
                    },
                    child: const Text('Change Color to Red'),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
