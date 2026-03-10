import 'package:flutter/material.dart';

class StatelessStatefulDemo extends StatelessWidget {
  const StatelessStatefulDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget Demo'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            HeaderWidget(title: 'Interactive Turf Counter'),
            SizedBox(height: 40),
            TurfCounterWidget(),
          ],
        ),
      ),
    );
  }
}

// 1. STATLESS WIDGET
class HeaderWidget extends StatelessWidget {
  final String title;

  const HeaderWidget({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      color: Colors.blue.shade100,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.blueAccent,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

// 2. STATEFUL WIDGET
class TurfCounterWidget extends StatefulWidget {
  const TurfCounterWidget({super.key});

  @override
  State<TurfCounterWidget> createState() => _TurfCounterWidgetState();
}

class _TurfCounterWidgetState extends State<TurfCounterWidget> {
  int _bookedTurfs = 0;
  bool _isDarkMode = false;

  void _increment() {
    setState(() {
      _bookedTurfs++;
    });
  }

  void _reset() {
    setState(() {
      _bookedTurfs = 0;
    });
  }

  void _toggleTheme(bool value) {
    setState(() {
      _isDarkMode = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24.0),
      decoration: BoxDecoration(
        color: _isDarkMode ? Colors.grey.shade900 : Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Dark Mode',
                style: TextStyle(
                  color: _isDarkMode ? Colors.white : Colors.black,
                  fontSize: 16,
                ),
              ),
              Switch(
                value: _isDarkMode,
                onChanged: _toggleTheme,
              ),
            ],
          ),
          const SizedBox(height: 20),
          Text(
            'Turfs Booked',
            style: TextStyle(
              fontSize: 20,
              color: _isDarkMode ? Colors.grey.shade300 : Colors.grey.shade700,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            '$_bookedTurfs',
            style: TextStyle(
              fontSize: 64,
              fontWeight: FontWeight.bold,
              color: _isDarkMode ? Colors.tealAccent : Colors.teal,
            ),
          ),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(
                onPressed: _reset,
                icon: const Icon(Icons.refresh),
                label: const Text('Reset'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                  foregroundColor: Colors.white,
                ),
              ),
              ElevatedButton.icon(
                onPressed: _increment,
                icon: const Icon(Icons.add),
                label: const Text('Book Turf'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  foregroundColor: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
