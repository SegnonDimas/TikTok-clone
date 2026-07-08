import 'package:flutter/material.dart';

// Page ave StatelessWidget
class ExamplePage extends StatelessWidget {
  const ExamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

// Page ave StatefulWidget
class PageExample extends StatefulWidget {
  const PageExample({super.key});

  @override
  State<PageExample> createState() => _PageExampleState();
}

class _PageExampleState extends State<PageExample> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}