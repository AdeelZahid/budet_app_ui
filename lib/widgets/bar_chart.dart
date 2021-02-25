import 'package:flutter/material.dart';

class BarChart extends StatelessWidget {
  const BarChart({Key key, this.expenses}) : super(key: key);
  final List<double> expenses;

  @override
  Widget build(BuildContext context) {
    double mostExpensive = 0;
    expenses.forEach(
      (double price) {
        if (price > mostExpensive) {
          mostExpensive = price;
        }
      },
    );
    return Column(
      children: [
        Text(
          'Weekly Spending',
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
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back),
              iconSize: 30.0,
              onPressed: () {},
            ),
            Text(
              'Nov 10, 2020 - Nov 16, 2020',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
                letterSpacing: 1.2,
              ),
            ),
            IconButton(
              icon: Icon(Icons.arrow_forward),
              iconSize: 30.0,
              onPressed: () {},
            ),
          ],
        ),
        SizedBox(height: 30.0),
        Row(
          children: [
            Bar(
              label: 'Su',
              amountSpent: expenses[0],
              mostExpensive: mostExpensive,
            ),
          ],
        ),
      ],
    );
  }
}

class Bar extends StatelessWidget {
  const Bar({Key key, this.label, this.amountSpent, this.mostExpensive})
      : super(key: key);
  final String label;
  final double amountSpent;
  final double mostExpensive;
  final double _maxBarHeight = 150;

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
        SizedBox(height: 6.0),
        Container(
          height: barHeight,
          width: 18.0,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(6.0),
          ),
        ),
        SizedBox(height: 8.0),
        Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16.0,
          ),
        ),
      ],
    );
  }
}
