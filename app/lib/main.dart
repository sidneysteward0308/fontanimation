import 'package:flutter/material.dart';
void main() {
runApp(MyApp());
}
class MyApp extends StatelessWidget {
@override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: FadingTextAnimation(),
    );
  }
}
class FadingTextAnimation extends StatefulWidget {
  @override
  _FadingTextAnimationState createState() => _FadingTextAnimationState();
}
class _FadingTextAnimationState extends State<FadingTextAnimation> {
  bool _isVisible = true;
  void toggleVisibility() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }
  bool _isFrameVisible = true;
  void toggleFrameVisibility(){
    setState(() {
      _isFrameVisible = !_isFrameVisible;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fading Text Animation'),
      ),
      body: Center(
        child: AnimatedOpacity(
          opacity: _isVisible ? 1.0 : 0.0,
          duration: Duration(seconds: 1),
          child:
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: Colors.deepPurpleAccent,
                width: 2,
              ),
              image: DecorationImage(
                  image: AssetImage("assets/images/miku.png"),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: toggleVisibility,
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}