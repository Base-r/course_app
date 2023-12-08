import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
                color: Colors.white,
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.of(context)
                      .pushNamedAndRemoveUntil("welcome", (route) => false);
                }),
            title: const Text('Home'),
            centerTitle: true,
            backgroundColor: Colors.blueAccent,
          ),
          body: Container(
            child: Column(
              children: [
                const Text('Home'),
                IconButton(
                    onPressed: () => Navigator.of(context)
                        .pushNamedAndRemoveUntil("sign_in", (route) => false),
                    icon: const Icon(Icons.next_plan))
              ],
            ),
          )),
    );
  }
}
