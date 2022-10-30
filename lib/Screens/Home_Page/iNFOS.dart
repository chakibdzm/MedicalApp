import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medicalapp/size_config.dart';

class Info_screen extends StatefulWidget {
  const Info_screen({Key? key}) : super(key: key);

  @override
  State<Info_screen> createState() => _Info_screenState();
}

class _Info_screenState extends State<Info_screen> {
  List<Color> gradientColors=[
    const Color(0xff23b6e6),
    const Color(0xff02d39a),
  ];
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.white,
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Positioned(child: Container(
                height: getHeight(210),
                width: getWidth(375),
                decoration: BoxDecoration(
                  color: Color(0xFF007AFE),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(getHeight(45)),
                  ),

                ),
              )),
              Positioned(child: Text('Tu progreso',
              style: TextStyle(
                color: Colors.white,
                fontSize: getHeight(24),
                fontWeight: FontWeight.w700,
              ),
              ),
              left: getWidth(16),
                top: getHeight(60),
              ),
              Positioned(child: Image.asset('assets/illustrations/Ellipse 32.png'),
              top: getHeight(110),
                right: getWidth(48),
              ),
              Positioned(child: SvgPicture.asset('assets/illustrations/Ellipse 26.svg'),
              right: getWidth(28),
                top: getHeight(87 ),
              ),
              Positioned(child: SvgPicture.asset('assets/illustrations/Ellipse 107.svg'),
              top: -1,
                right: -6,
              ),



            ],

          ),
          Container(
            height: getHeight(236),
            width: getWidth(375),
            child: LineChart(
              LineChartData(
                maxX: 23,
                maxY: 15,
                minX: 0,
                minY: 0,
                lineBarsData: [
                  LineChartBarData(
                    spots: [
                      FlSpot(0, 0),
                      FlSpot(1, 4),
                      FlSpot(2, 8),
                      FlSpot(8, 6),
                      FlSpot(12, 10),
                      FlSpot(19, 12),
                    ],
                    isCurved: true,
                    color: Colors.blue,
                    barWidth: 5,
                    dotData: FlDotData(
                      show: false,
                    ),

                  ),


                ],
    borderData: FlBorderData(
    border: const Border(bottom: BorderSide(), left: BorderSide())),
    gridData: FlGridData(show: true),
    titlesData: FlTitlesData(
    bottomTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
    leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
    topTitles: AxisTitles(sideTitles: _bottomTitles),
    rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
    ),
    ),

              )

            ),


        ],
      ),
    ));
  }
  SideTitles get _bottomTitles => SideTitles(
    showTitles: true,
    getTitlesWidget: (value, meta) {
      String text = '';
      switch (value.toInt()) {
        case 1:
          text = 'Jan';
          break;
        case 3:
          text = 'Mar';
          break;
        case 5:
          text = 'May';
          break;
        case 7:
          text = 'Jul';
          break;
        case 9:
          text = 'Sep';
          break;
        case 11:
          text = 'Nov';
          break;
      }

      return Text(text);
    },
  );
}
