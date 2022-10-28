import 'package:flutter/material.dart';

typedef InputNumberChanged = Future<void> Function(String, num);

class InputNumberWidget extends StatefulWidget {
  final String name;
  final InputNumberChanged valueChanged;

  const InputNumberWidget({
    Key? key,
    required this.name,
    required this.valueChanged,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _InputNumberWidgetState();
}

class _InputNumberWidgetState extends State<InputNumberWidget> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          SizedBox(
            height: 36,
            width: 94,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              controller: _controller,
              onSubmitted: (String value) async {
                await _applyValue(value);
              },
            ),
          ),
          TextButton(
            child: const Text('apply'),
            onPressed: () async {
              await _applyValue(_controller.text);
            },
          ),
        ],
      ),
    );
  }

  Future<void> _applyValue(String text) async {
    final value = num.tryParse(text);
    if (value != null) {
      await widget.valueChanged(widget.name, value);
    }
  }
}
