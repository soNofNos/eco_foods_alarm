import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class ClockView extends StatefulWidget {
  const ClockView({Key? key}) : super(key: key);

  @override
  State<ClockView> createState() => _ClockViewState();
}

class _ClockViewState extends State<ClockView> {

  @override void initState(){
    Timer.periodic(Duration(seconds: 1), (timer){
      setState(() {

      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 325,
      height: 325,
      child: Transform.rotate(
        angle:  pi ,
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
      ..color = Colors.black;

    var secondHandPaintBrush = Paint()
      ..color = Colors.red
      ..shader = RadialGradient(colors: [Colors.green, Colors.blue])
          .createShader(Rect.fromCircle(center: centerPoint, radius: radius))
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 8;

    var minHandPaintBrush = Paint()
      ..shader = RadialGradient(colors: [Colors.orange, Colors.brown])
          .createShader(Rect.fromCircle(center: centerPoint, radius: radius))
      ..color = Colors.black54
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 8;

    var hourHandPaintBrush = Paint()
      ..shader = RadialGradient(colors: [Colors.amber, Colors.pink])
          .createShader(Rect.fromCircle(center: centerPoint, radius: radius))
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 8;

    canvas.drawCircle(centerPoint, radius - 40, fillPaintBrush);
    canvas.drawCircle(centerPoint, radius - 40, outlinePaintBrush);

    var secHandXCoordinate = centerPointX + 80 * cos(dateTime.second  * 6 * pi/180);
    var secHandYCoordinate = centerPointY + 80 * sin(dateTime.second  * 6 * pi/180);
    canvas.drawLine(centerPoint, Offset(secHandXCoordinate, secHandYCoordinate), secondHandPaintBrush);

    var minHandXCoordinate = centerPointX + 80 * cos(dateTime.minute  * 6 * pi/180);
    var minHandYCoordinate = centerPointY + 80 * sin(dateTime.minute  * 6 * pi/180);
    canvas.drawLine(centerPoint, Offset(minHandXCoordinate, minHandYCoordinate), minHandPaintBrush);

    var hourHandXCoordinate = centerPointX + 80 * cos(dateTime.hour * 30 + dateTime.minute * 0.5 * pi/180);
    var hourHandYCoordinate = centerPointY + 80 * sin(dateTime.hour * 30 + dateTime.minute * 0.5 * pi/180);
    canvas.drawLine(centerPoint, Offset(hourHandXCoordinate, hourHandYCoordinate), hourHandPaintBrush);


    canvas.drawCircle(centerPoint, 12, centerFillPaintBrush);


    var outerCircleRadius = radius;
    var innerCircleRadius = radius - 14;
    for (double i = 0; i <360; i += 12){
      var x1 = centerPointX + outerCircleRadius * cos(i * pi/180);
      var y1 = centerPointX + outerCircleRadius * sin(i * pi/180);

      var x2 = centerPointX + innerCircleRadius * cos(i * pi/180);
      var y2 = centerPointX + innerCircleRadius * sin(i * pi/180);
      // canvas.drawLine(Offset(x1,y1), Offset(x2,y2), dashBrush);
    }

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
