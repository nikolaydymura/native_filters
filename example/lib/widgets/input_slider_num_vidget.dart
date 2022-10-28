import 'package:flutter/material.dart';

typedef InputNumberChanged = Future<void> Function(String, num);

class InputSliderNumWidget extends StatefulWidget {
  final String name;
  final double min;
  final double max;
  final InputNumberChanged valueChanged;

  const InputSliderNumWidget({
    Key? key,
    required this.name,
    required this.valueChanged,
    required this.min,
    required this.max,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _InputSliderNumWidgetState();
}

class _InputSliderNumWidgetState extends State<InputSliderNumWidget> {
  late TextEditingController _controller;
  double _currentSliderValue = 0;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    _currentSliderValue;
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
            height: 18,
            width: 200,
            child: Slider(
              value: _currentSliderValue,
              min: widget.min,
              max: widget.max,
              label: '${_currentSliderValue.round()}',
              onChanged: (double value) async {
                setState(() {
                  _currentSliderValue = value;
                });
                await widget.valueChanged(widget.name, value);
              },
            ),
          )
        ],
      ),
    );
  }
}
