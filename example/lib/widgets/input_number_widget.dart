import 'package:flutter/material.dart';
import 'package:native_filters/native_filters.dart';

class InputNumberWidget extends StatefulWidget {
  final String name;
  final Filter? filter;

  const InputNumberWidget({Key? key, required this.name, this.filter})
      : super(key: key);

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
      padding: const EdgeInsets.symmetric(vertical: 16.0),
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
                await widget.filter!.setNumValue(widget.name, num.parse(value));
              },
            ),
          ),
          TextButton(
            child: const Text('apply'),
            onPressed: () async {
              await widget.filter!
                  .setNumValue(widget.name, num.parse(_controller.text));
            },
          ),
        ],
      ),
    );
  }
}
