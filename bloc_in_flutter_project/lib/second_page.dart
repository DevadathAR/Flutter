import 'package:bloc_in_flutter_project/view/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CounterBloc counterBloc = BlocProvider.of<CounterBloc>(context);
    return Scaffold(
        appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 107, 169, 183),
        title: const Center(
            child: Text(
          "Tap Count",
          style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontSize: 32,
              fontWeight: FontWeight.bold),
        )),
          leading: BackButton(
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: BlocBuilder(
            bloc: counterBloc,
            builder: (context, state) {
              return Center(
                child: SingleChildScrollView(scrollDirection: Axis.horizontal,
                
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        counterBloc.state.counter.toString(),
                        style:  const TextStyle(fontSize: 300,fontWeight: FontWeight.w900),
                      ),
                      Text("Total no.of tap on the screan ${counterBloc.state.tap_count.toString()}")
                    ],
                  ),
                ),
              );
            }));
  }
}
