import 'package:bloc_in_flutter_project/second_page.dart';
import 'package:bloc_in_flutter_project/view/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 107, 169, 183),
        title: const Center(
            child: Text(
          "COUNTER",
          style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontSize: 32,
              fontWeight: FontWeight.bold),
        )),
      ),
      body: BlocBuilder<CounterBloc, CounterState>(
          builder: (context, state) {
        return Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  state.counter.toString(),
                  style: TextStyle(
                    color: state.colors,           
                      fontSize: 130,
                      fontWeight: FontWeight.w900),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () => BlocProvider.of<CounterBloc>(context)
                            .add(Decrease()), 
                        child: const Icon(Icons.remove)),
                    const SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                        onPressed: () => BlocProvider.of<CounterBloc>(context)
                            .add(Increase()), 
                        child: const Icon(Icons.add)),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () => BlocProvider.of<CounterBloc>(context)
                        .add((ResetCount())), 
                    child: const Icon(Icons.restore_rounded)),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SecondPage(),
                        )),
                    child: const Text("Click To Display")),
              ],
            ),
          ],
        );
      }),
    );
  }
}
