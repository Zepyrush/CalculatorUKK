//import 'package:calculator_app/utils/margins/x_margin.dart';
import 'package:calculator_app/widgets/calculator_functions.dart';
import 'package:calculator_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  CalculatorFunctions calculatorFunctions = CalculatorFunctions();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                calculatorFunctions.expression,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                calculatorFunctions.result,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                buttonText: '⌫',
                textColor: const Color.fromARGB(255, 79, 216, 5),
                buttonColor: Colors.black,
                onPressed: () {
                  setState(() {
                    calculatorFunctions.calculate('⌫');
                  });
                },
                fontSize: 18,
              ),
              const Divider(
                color: Color(0xFF171717),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButton(
                    buttonText: "C",
                    textColor: Colors.red,
                    onPressed: () {
                      setState(() {
                        calculatorFunctions.calculate('C');
                      });
                    },
                  ),
                  CustomButton(
                    buttonText: "( )",
                    textColor: const Color.fromARGB(255, 79, 216, 5),
                    onPressed: () {
                      setState(() {
                        calculatorFunctions.calculate('( )');
                      });
                    },
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                  CustomButton(
                    buttonText: "%",
                    textColor: const Color.fromARGB(255, 79, 216, 5),
                    onPressed: () {
                      setState(() {
                        calculatorFunctions.calculate('%');
                      });
                    },
                    fontWeight: FontWeight.bold,
                  ),
                  CustomButton(
                    buttonText: "÷",
                    textColor: const Color.fromARGB(255, 79, 216, 5),
                    onPressed: () {
                      setState(() {
                        calculatorFunctions.calculate('/');
                      });
                    },
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButton(
                    buttonText: '7',
                    onPressed: () {
                      setState(() {
                        calculatorFunctions.calculate('7');
                      });
                    },
                  ),
                  CustomButton(
                    buttonText: "8",
                    onPressed: () {
                      setState(() {
                        calculatorFunctions.calculate('8');
                      });
                    },
                  ),
                  CustomButton(
                    buttonText: "9",
                    onPressed: () {
                      setState(() {
                        calculatorFunctions.calculate("9");
                      });
                    },
                  ),
                  CustomButton(
                    buttonText: "x",
                    textColor: const Color.fromARGB(255, 79, 216, 5),
                    onPressed: () {
                      setState(() {
                        calculatorFunctions.calculate("*");
                      });
                    },
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButton(
                    buttonText: "4",
                    onPressed: () {
                      setState(() {
                        calculatorFunctions.calculate("4");
                      });
                    },
                  ),
                  CustomButton(
                    buttonText: "5",
                    onPressed: () {
                      setState(() {
                        calculatorFunctions.calculate("5");
                      });
                    },
                  ),
                  CustomButton(
                    buttonText: "6",
                    onPressed: () {
                      setState(() {
                        calculatorFunctions.calculate("6");
                      });
                    },
                  ),
                  CustomButton(
                    buttonText: "−",
                    textColor: const Color.fromARGB(255, 79, 216, 5),
                    onPressed: () {
                      setState(() {
                        calculatorFunctions.calculate("-");
                      });
                    },
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButton(
                    buttonText: "1",
                    onPressed: () {
                      setState(() {
                        calculatorFunctions.calculate("1");
                      });
                    },
                  ),
                  CustomButton(
                    buttonText: "2",
                    onPressed: () {
                      setState(() {
                        calculatorFunctions.calculate("2");
                      });
                    },
                  ),
                  CustomButton(
                    buttonText: "3",
                    onPressed: () {
                      setState(() {
                        calculatorFunctions.calculate("3");
                      });
                    },
                  ),
                  CustomButton(
                    buttonText: "+",
                    textColor: const Color.fromARGB(255, 79, 216, 5),
                    onPressed: () {
                      setState(() {
                        calculatorFunctions.calculate("+");
                      });
                    },
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButton(
                    buttonText: "00",
                    onPressed: () {
                      setState(() {
                        calculatorFunctions.calculate("00");
                      });
                    },
                    fontSize: 26,
                  ),
                  CustomButton(
                    buttonText: "0",
                    onPressed: () {
                      setState(() {
                        calculatorFunctions.calculate("0");
                      });
                    },
                  ),
                  CustomButton(
                    buttonText: ".",
                    onPressed: () {
                      setState(() {
                        calculatorFunctions.calculate(".");
                      });
                    },
                  ),
                  CustomButton(
                    buttonColor: const Color(0xFF318602),
                    buttonText: "=",
                    onPressed: () {
                      setState(() {
                        calculatorFunctions.calculate("=");
                      });
                    },
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                  ),
                ],
              ),
            ],
          ),
        )));
  }
}
