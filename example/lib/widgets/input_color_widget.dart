import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

typedef InputNumberChanged = Future<void> Function(String, Color);

class InputColorWidget extends StatefulWidget {
  final String name;
  final InputNumberChanged valueChanged;

  const InputColorWidget({
    Key? key,
    required this.name,
    required this.valueChanged,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _InputColorWidgetState();
}

class _InputColorWidgetState extends State<InputColorWidget> {
  late TextEditingController _sliderRedController;
  late TextEditingController _sliderGreenController;
  late TextEditingController _sliderBlueController;
  double _currentSliderRed = 0;
  double _currentSliderGreen = 0;
  double _currentSliderBlue = 0;

  @override
  void initState() {
    super.initState();
    _sliderRedController = TextEditingController();
    _sliderGreenController = TextEditingController();
    _sliderBlueController = TextEditingController();
    _currentSliderRed;
    _currentSliderGreen;
    _currentSliderBlue;
  }

  @override
  void dispose() {
    _sliderRedController.dispose();
    _sliderGreenController.dispose();
    _sliderBlueController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    height: 50,
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: ListView(
                      padding: const EdgeInsets.all(8),
                      children: <Widget>[
                        Row(
                          children: [
                            const Text(
                              'R:  ',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 24,
                              width: 60,
                              child: TextField(
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(
                                    RegExp(
                                      '(0?[0-9]{1,2}|1?[0-9]{1,2}|2[0-4][0-9]|25[0-5])',
                                    ),
                                  ),
                                ],
                                onChanged: ((value) {
                                  setState(() {
                                    _currentSliderRed = double.parse(value);
                                  });
                                }),
                                controller: _sliderRedController,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 24,
                              width: 200,
                              child: Slider(
                                activeColor: Colors.red,
                                inactiveColor:
                                    Color.fromARGB(255, 191, 156, 153),
                                value: _currentSliderRed,
                                divisions: 255,
                                min: 0.0,
                                max: 255.0,
                                onChanged: (double value) async {
                                  setState(() {
                                    _currentSliderRed = value.toDouble();
                                    _sliderRedController.text =
                                        _currentSliderRed.toString();
                                  });
                                },
                                label: '${_currentSliderRed.round()}',
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    height: 50,
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: ListView(
                      padding: const EdgeInsets.all(8),
                      children: <Widget>[
                        Row(
                          children: [
                            const Text(
                              'G:  ',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 24,
                              width: 60,
                              child: TextField(
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(
                                    RegExp(
                                      '(0?[0-9]{1,2}|1?[0-9]{1,2}|2[0-4][0-9]|25[0-5])',
                                    ),
                                  ),
                                ],
                                onChanged: ((value) {
                                  setState(() {
                                    _currentSliderGreen = double.parse(value);
                                  });
                                }),
                                controller: _sliderGreenController,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 24,
                              width: 200,
                              child: Slider(
                                activeColor: Colors.green,
                                inactiveColor:
                                    const Color.fromARGB(255, 153, 191, 167),
                                value: _currentSliderGreen,
                                divisions: 255,
                                min: 0.0,
                                max: 255.0,
                                onChanged: (double value) async {
                                  setState(() {
                                    _currentSliderGreen = value.toDouble();
                                    _sliderGreenController.text =
                                        _currentSliderGreen.toString();
                                  });
                                },
                                label: '${_currentSliderGreen.round()}',
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    height: 50,
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: ListView(
                      padding: const EdgeInsets.all(8),
                      children: <Widget>[
                        Row(
                          children: [
                            const Text(
                              'B:  ',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 24,
                              width: 60,
                              child: TextField(
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(
                                    RegExp(
                                      '(0?[0-9]{1,2}|1?[0-9]{1,2}|2[0-4][0-9]|25[0-5])',
                                    ),
                                  ),
                                ],
                                onChanged: ((value) {
                                  setState(() {
                                    _currentSliderBlue = double.parse(value);
                                  });
                                }),
                                controller: _sliderBlueController,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 24,
                              width: 200,
                              child: Slider(
                                activeColor: Colors.blue,
                                inactiveColor:
                                    const Color.fromARGB(255, 153, 183, 191),
                                value: _currentSliderBlue,
                                divisions: 255,
                                min: 0.0,
                                max: 255.0,
                                onChanged: (double value) async {
                                  setState(() {
                                    _currentSliderBlue = value.toDouble();
                                    _sliderBlueController.text =
                                        _currentSliderBlue.toString();
                                  });
                                },
                                label: '${_currentSliderBlue.round()}',
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            width: 10,
            child: TextButton(
              child: const Text('apply'),
              onPressed: () async {
                await _applyValue(_sliderRedController.text,
                    _sliderGreenController.text, _sliderBlueController.text);
              },
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _applyValue(String red, String green, String blue) async {
    final valueRed = int.parse(red);
    final valueGreen = int.parse(red);
    final valueBlue = int.parse(red);

    final Color value = Color.fromARGB(255, valueRed, valueGreen, valueBlue);

    await widget.valueChanged(widget.name, value);
  }
}
