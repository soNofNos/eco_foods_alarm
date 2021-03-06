import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class ClockView extends StatefulWidget {

  final double size;

  const ClockView({Key? key, required this.size}) : super(key: key);

  @override
  State<ClockView> createState() => _ClockViewState();
}

class _ClockViewState extends State<ClockView> {

  @override
  void initState(){
    super.initState();
    Timer.periodic(Duration(milliseconds: 100), (timer){
      setState(() {

      });
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.size,
      height: widget.size,
      child: Transform.rotate(
        angle:  pi/2 ,
        child: CustomPaint(
          painter: ClockPainter(),
        ),
      ),
    );
  }
}

class ClockPainter extends CustomPainter {

  var dateTime = DateTime.now();


  @override
  void paint(Canvas canvas, Size size) {
    var centerPointX = size.width / 2;
    var centerPointY = size.height / 2;
    var centerPoint = Offset(centerPointX, centerPointY);
    var radius = min(centerPointX, centerPointY);

    var fillPaintBrush = Paint()
      ..color = Colors.white70;

    var outlinePaintBrush = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 8;

    var centerFillPaintBrush = Paint()
      ..color = Colors.red;

    var secondHandPaintBrush = Paint()
      // ..color = Colors.red
      ..shader = RadialGradient(colors: [Colors.red, Colors.red])
          .createShader(Rect.fromCircle(center: centerPoint, radius: radius))
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      // ..strokeWidth = 3;
    ..strokeWidth = size.width/90;

    var minHandPaintBrush = Paint()
      ..shader = RadialGradient(colors: [Colors.black, Colors.black])
          .createShader(Rect.fromCircle(center: centerPoint, radius: radius))
      // ..color = Colors.black54
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      // ..strokeWidth = 8;
      ..strokeWidth = size.width/40;

    var hourHandPaintBrush = Paint()
      ..shader = RadialGradient(colors: [Colors.black, Colors.black])
          .createShader(Rect.fromCircle(center: centerPoint, radius: radius))
      // ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      // ..strokeWidth = 8;
      ..strokeWidth = size.width/24;

    var dashPaintBrush = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      // ..strokeWidth = 1;
      ..strokeWidth = size.width/270;

    canvas.drawCircle(centerPoint, radius * 0.75, fillPaintBrush);
    canvas.drawCircle(centerPoint, radius  * 0.75, outlinePaintBrush);


    var hourHandXCoordinate = centerPointX + radius * 0.45 * cos(dateTime.hour * 30 + dateTime.minute * 0.5 * pi/180);
    var hourHandYCoordinate = centerPointY + radius * 0.45 * sin(dateTime.hour * 30 + dateTime.minute * 0.5 * pi/180);
    canvas.drawLine(centerPoint, Offset(hourHandXCoordinate, hourHandYCoordinate), hourHandPaintBrush);

    var minHandXCoordinate = centerPointX + radius * 0.6 * cos(dateTime.minute  * 6 * pi/180);
    var minHandYCoordinate = centerPointY + radius * 0.6 * sin(dateTime.minute  * 6 * pi/180);
    canvas.drawLine(centerPoint, Offset(minHandXCoordinate, minHandYCoordinate), minHandPaintBrush);

    var secHandXCoordinate = centerPointX + radius * 0.65 * cos(dateTime.second  * 6 * pi/180);
    var secHandYCoordinate = centerPointY + radius * 0.65 * sin(dateTime.second  * 6 * pi/180);
    canvas.drawLine(centerPoint, Offset(secHandXCoordinate, secHandYCoordinate), secondHandPaintBrush);


    canvas.drawCircle(centerPoint, radius * 0.11, centerFillPaintBrush);


    var outerCircleRadius = radius;
    var innerCircleRadius = radius * 0.9;
    for (double i = 0; i <360; i += 30){
      var x1 = centerPointX + outerCircleRadius * cos(i * pi/180);
      var y1 = centerPointX + outerCircleRadius * sin(i * pi/180);

      var x2 = centerPointX + innerCircleRadius * cos(i * pi/180);
      var y2 = centerPointX + innerCircleRadius * sin(i * pi/180);
      canvas.drawLine(Offset(x1,y1), Offset(x2,y2), dashPaintBrush);
    }

    var innerCircleRadiusS = radius * 0.95;
    for(double j = 0; j < 360; j += 6){
      var x1 = centerPointX + outerCircleRadius * cos(j * pi/180);
      var y1 = centerPointX + outerCircleRadius * sin(j * pi/180);

      var x2 = centerPointX + innerCircleRadiusS * cos(j * pi/180);
      var y2 = centerPointX + innerCircleRadiusS * sin(j * pi/180);
      canvas.drawLine(Offset(x1,y1), Offset(x2,y2), dashPaintBrush);
    }

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
