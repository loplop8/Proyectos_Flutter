import 'package:componentes/themes/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool? _sliderEnable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Slider and checks"),
        ),
        body: Column(
          children: [
            Slider.adaptive(
                min: 50,
                max: 400,
                activeColor: AppTheme.primario,
                value: _sliderValue,
                onChanged: _sliderEnable!
                    ? (value) {
                        _sliderValue = value;
                        setState(() {});
                      }
                    : null),
            Checkbox(
                value: _sliderEnable,
                onChanged: (value) {
                  _sliderEnable = value ?? true;
                  setState(() {});
                }),
            CheckboxListTile(
                activeColor: AppTheme.primario,
                title: const Text("Habilitar Slider"),
                value: _sliderEnable,
                onChanged: (value) {
                  _sliderEnable = value ?? true;
                  setState(() {});
                }),
            
            SwitchListTile.adaptive(
                activeColor: AppTheme.primario,
                title: const Text("Habilitar Slider"),
                value: _sliderEnable!,
                onChanged: (value) {
                  _sliderEnable = true;
                  setState(() {});
                }),
                
            Expanded(
              child: SingleChildScrollView(
                child: Image(
                  image: const NetworkImage(
                      "https://cdn.pixabay.com/photo/2014/11/07/21/35/zombie-521243_640.png"),
                  fit: BoxFit.contain,
                  width: _sliderValue,
                ),
              ),
            ),
          ],
        ));
  }
}
