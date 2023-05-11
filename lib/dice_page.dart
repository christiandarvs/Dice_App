import 'package:flutter/material.dart';
import 'package:dice_app/random_number.dart';

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxHeight: 200),
          child: Column(
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                        child: Image.asset(
                      'images/dice${generateRandomNumber(6)}.png',
                    )),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: Image.asset(
                      'images/dice${generateRandomNumber(6)}.png',
                    )),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                  onPressed: () {
                    setState(() {
                      generateRandomNumber(6);
                    });
                  },
                  child: const Text('Roll Dice'))
            ],
          ),
        ),
      ),
    );
  }
}
