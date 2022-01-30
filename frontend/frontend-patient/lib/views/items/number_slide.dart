part of 'items_files.dart';

class NumberSlide extends StatefulWidget {
  @override
  _NumberSlideState createState() => _NumberSlideState();
}

class _NumberSlideState extends State<NumberSlide> {
  double _currentSliderValue = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Slider(
      value: _currentSliderValue,
      min: 0,
      max: 10,
      divisions: 10,
      activeColor: AppColors.COLOR_MAIN_TEXT,
      inactiveColor: AppColors.COLOR_PRIMARY_LIGHT,
      label: _currentSliderValue.round().toString(),
      onChanged: (double value) {
        setState(() {
          _currentSliderValue = value;
        });
      },
    ));
  }
}
