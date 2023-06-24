import 'package:flutter/material.dart';
import 'package:sumapp/style.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Sum App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Map<String, double> formValue = {
    "num1" : 0,
    "num2" : 0,
    "num3" : 0,
  };
  double sumValue = 0;


  @override
  Widget build(BuildContext context) {

    myInputOnChange(inputKey, inputValue) {
      setState(() {
        formValue.update(inputKey, (value) => double.parse(inputValue));
      });
    }

    addAllNumbers() {
      setState(() {
        sumValue = formValue['num1']! + formValue['num2']! + formValue['num3']!;
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Sum App'),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'The sum is: $sumValue ',
              style: headTextStyle(),
            ),
            const SizedBox(height: 25.0),
            TextFormField(
              onChanged: (value){
                //set value to num1
              myInputOnChange("num1", value);
              },
              decoration: appInputStyle('First Number'),
            ),
            const SizedBox(height: 15.0),
            TextFormField(
              onChanged: (value){
                //set value to num2
                myInputOnChange("num2", value);
              },
              decoration: appInputStyle('Second Number'),
            ),
            const SizedBox(height: 15.0),
            TextFormField(
              onChanged: (value){
                //set value to num3
                myInputOnChange("num3", value);
              },

              decoration: appInputStyle('Third Number'),
            ),
            const SizedBox(height: 15.0),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  addAllNumbers();
                  // print(sumValue);
                },
                style: appButtonStyle(),
                child: const Text(
                  'Add',
                  style: TextStyle(fontSize: 15.0),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
