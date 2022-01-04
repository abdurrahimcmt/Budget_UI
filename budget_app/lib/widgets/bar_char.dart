import 'package:flutter/material.dart';

class BarChar extends StatelessWidget {
  final List<double> expenses;

  BarChar({required this.expenses});
  @override
  Widget build(BuildContext context) {
    double mostExpensive = 0;

    for (var price in expenses) {
      if (price > mostExpensive) {
        mostExpensive = price;
      }
    }

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Text(
            "Weekly Spending",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.2,
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_back),
                iconSize: 30.0,
              ),
              Text(
                'Des 20.2021-Des 30,2021',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.0,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_forward,
                ),
                iconSize: 30.0,
              ),
            ],
          ),
          SizedBox(
            height: 30.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Bar(
                label: 'Su',
                amountSpent: expenses[0],
                mostExpensive: mostExpensive,
              ),
              Bar(
                label: 'Mon',
                amountSpent: expenses[1],
                mostExpensive: mostExpensive,
              ),
              Bar(
                label: 'Tu',
                amountSpent: expenses[2],
                mostExpensive: mostExpensive,
              ),
              Bar(
                label: 'We',
                amountSpent: expenses[3],
                mostExpensive: mostExpensive,
              ),
              Bar(
                label: 'Th',
                amountSpent: expenses[4],
                mostExpensive: mostExpensive,
              ),
              Bar(
                label: 'Fr',
                amountSpent: expenses[5],
                mostExpensive: mostExpensive,
              ),
              Bar(
                label: 'Sa ',
                amountSpent: expenses[6],
                mostExpensive: mostExpensive,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Bar extends StatelessWidget {
  final String label;
  final double amountSpent;
  final double mostExpensive;
  final double _maxBarHeight = 200;
  Bar({
    required this.label,
    required this.amountSpent,
    required this.mostExpensive,
  });
  @override
  Widget build(BuildContext context) {
    final barHeight = amountSpent / mostExpensive * _maxBarHeight;
    return Column(
      children: [
        Text(
          '\$${amountSpent.toStringAsFixed(2)}',
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          height: 6.0,
        ),
        Container(
          height: barHeight,
          width: 18.0,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        SizedBox(
          height: 8.0,
        ),
        Text(
          label,
          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
