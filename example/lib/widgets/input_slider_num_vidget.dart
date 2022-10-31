import 'package:flutter/material.dart';

typedef InputNumberChanged = Future<void> Function(String, num);

class InputSliderNumWidget extends StatefulWidget {
  final String name;
  final double min;
  final double max;
  final double value;
  final InputNumberChanged valueChanged;

  const InputSliderNumWidget({
    Key? key,
    required this.name,
    required this.valueChanged,
    required this.min,
    required this.max,
    required this.value,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _InputSliderNumWidgetState();
}

class _InputSliderNumWidgetState extends State<InputSliderNumWidget> {
  late TextEditingController _controller;
  late double _currentSliderValue = widget.value;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    _controller.text = _currentSliderValue.toStringAsPrecision(3);
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
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            flex: 5,
            child: Slider(
              value: _currentSliderValue,
              min: widget.min,
              max: widget.max,
              label: _currentSliderValue.toStringAsPrecision(3),
              onChanged: (double value) async {
                _controller.text = _currentSliderValue.toStringAsPrecision(3);
                setState(() {
                  _currentSliderValue = value;
                });
              },
            ),
          ),
          Expanded(
            flex: 2,
            child: TextField(
              controller: _controller,
              onChanged: (String value) {
                final sliderValue = double.tryParse(value);
                if (sliderValue != null) {
                  if (sliderValue >= widget.min && sliderValue <= widget.max) {
                    setState(() {
                      _currentSliderValue = sliderValue;
                    });
                  }
                }
              },
            ),
          ),
          TextButton(
            child: const Text('apply'),
            onPressed: () async {
              await _apply();
            },
          ),
        ],
      ),
    );
  }

  Future<void> _apply() async {
    await widget.valueChanged(widget.name, _currentSliderValue);
  }
}
