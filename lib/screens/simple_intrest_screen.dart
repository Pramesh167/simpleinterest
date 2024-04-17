import 'package:flutter/material.dart';

class SimpleInterest extends StatefulWidget {
  const SimpleInterest({super.key});

  @override
  State<SimpleInterest> createState() => _SimpleInterestState();
}

class _SimpleInterestState extends State<SimpleInterest> {
  TextEditingController principle = TextEditingController();
  TextEditingController rate = TextEditingController();
  TextEditingController time = TextEditingController();
  var result = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          TextField(
            controller: principle,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(labelText: 'Enter the principle'),
          ),
          TextField(
            controller: rate,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(labelText: 'Enter the rate (%)'),
          ),
          TextField(
            controller: time,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(labelText: 'Enter the time'),
          ),
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  calculate();
                },
                child: const Text(
                  style: TextStyle(fontSize: 20),
                  'Calculate',
                ),
              ),
              const SizedBox(width: 30),
              ElevatedButton(
                onPressed: () {
                  clear();
                },
                child: const Text(
                  style: TextStyle(fontSize: 20),
                  'Clear',
                ),
              ),
            ],
          ),
          const SizedBox(height: 40),
          result.isEmpty
              ? const Text('')
              : Text(
                  style: const TextStyle(fontSize: 30),
                  'Simple Interest: $result',
                ),
        ],
      ),
    );
  }
//button to perform operation of calucation
  void calculate() {
    setState(() {
      var p = double.parse(principle.text);
      var r = double.parse(rate.text);
      var t = double.parse(time.text);
      result = (p * r * t / 100).toString();
    });
  }
//for the reset button
  void clear() {
    setState(() {
      principle.text = '';
      rate.text = '';
      time.text = '';
      result = '';
    });
  }
}
