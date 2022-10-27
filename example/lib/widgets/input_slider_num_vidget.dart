import 'package:flutter/material.dart';

typedef InputNumberChanged = Future<void> Function(String, num);

class InputSliderNumWidget extends StatefulWidget {
  final String name;
  final InputNumberChanged valueChanged;

  const InputSliderNumWidget({
    Key? key,
    required this.name,
    required this.valueChanged,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _InputSliderNumWidgetState();
}

class _InputSliderNumWidgetState extends State<InputSliderNumWidget> {
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
    double _currentSliderValue = 0;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        children: [
          SizedBox(
            height: 36,
            width: 200,
            child: Slider(
              value: _currentSliderValue,
              min: 0,
              max: 10,
              label: _currentSliderValue.round().toString(),
              onChanged: (double value) async {
                setState(() {
                  _currentSliderValue = value;
                });
                await _applyValue('$value');
              },
            ),
          )
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
