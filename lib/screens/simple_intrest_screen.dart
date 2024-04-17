import 'package:flutter/material.dart';

// class SimpleIntrestScreen extends StatefulWidget {
//   const SimpleIntrestScreen({super.key});

//   @override
//   State<SimpleIntrestScreen> createState() => _SimpleIntrestScreenState();
// }

// class _SimpleIntrestScreenState extends State<SimpleIntrestScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           "Simple Interest Calculator",
//           style: TextStyle(
//             fontSize: 25,
//           ),
//         ),
//         centerTitle: true,
//         elevation: 0,
//       ),
//       body: const Padding(
//         padding: EdgeInsets.all(8),
//         child: Column(
//           children: [
//             TextField(
//               keyboardType: TextInputType.number,
//               //onchanged from here
//               decoration: InputDecoration(
//                   border: OutlineInputBorder(),
//                   hintText: "Enter your Principle here"),
//             ),
//             SizedBox(
//               height: 8,
//             ),
//             TextField(
//               keyboardType: TextInputType.number,
//               // onChanged: (value) {
//               //   second = int.parse(value);
              
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//                 labelText: 'Enter your second number',
//               ),
//             ),
//             SizedBox(
//               height: 8,
//             ),
//             ElevatedButton(onPressed: onPressed, child: child)
//           ],
//         ),
//       ),
//     );
//   }
// }


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
            decoration: const InputDecoration(labelText: 'Enter the rate'),
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
                  'Reset',
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

  void calculate() {
    setState(() {
      var p = double.parse(principle.text);
      var r = double.parse(rate.text);
      var t = double.parse(time.text);
      result = (p * r * t / 100).toString();
    });
  }

  void clear() {
    setState(() {
      principle.text = '';
      rate.text = '';
      time.text = '';
      result = '';
    });
  }
}
