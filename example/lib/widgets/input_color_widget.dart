import 'package:flutter/material.dart';

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
      child: Column(
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
    );
  }

  /*Future<void> _applyValue(String text) async {
    final value = num.tryParse(text);
    if (value != null) {
      await widget.valueChanged(widget.name, value);
    }
  }*/
}


/*TextField(
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
            },*/
