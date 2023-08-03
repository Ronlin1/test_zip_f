import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:efunding/utils/dimsensions.dart';

class ChartFlowDashboardWidget extends StatefulWidget {
  const ChartFlowDashboardWidget({Key? key}) : super(key: key);

  @override
  State<ChartFlowDashboardWidget> createState() =>
      _ChartFlowDashboardWidgetState();
}

class _ChartFlowDashboardWidgetState extends State<ChartFlowDashboardWidget> {
  late List<ChartData> _chartData;

  @override
  void initState() {
    _chartData = getColumnData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: Dimensions.marginSize * 0.5,
          vertical: Dimensions.marginSize * 0.5),
      // height: 300.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          color: Colors.blueGrey.withOpacity(0.1)),
      child: SfCartesianChart(
        series: <ChartSeries>[
          ColumnSeries<ChartData, String>(
              dataSource: _chartData,
              xValueMapper: (ChartData gdp, _) => gdp.month,
              yValueMapper: (ChartData gdp, _) => gdp.gdp),
        ],
        primaryXAxis: CategoryAxis(),
        primaryYAxis: NumericAxis(edgeLabelPlacement: EdgeLabelPlacement.shift),
      ),
    );
  }


  dynamic getColumnData(){
    List<ChartData> chartData=<ChartData>[
      ChartData(gdp: 400, month: 'Jan'),
      ChartData(gdp: 380, month: 'Feb'),
      ChartData(gdp: 350, month: 'Mar'),
      ChartData(gdp: 320, month: 'Apr'),
      ChartData(gdp: 480, month: 'May'),
      ChartData(gdp: 350, month: 'Jun'),
      ChartData(gdp: 340, month: 'Jul'),
      ChartData(gdp: 400, month: 'Aug'),
      ChartData(gdp: 420, month: 'Sep'),
      ChartData(gdp: 300, month: 'Oct'),
      ChartData(gdp: 360, month: 'Nov'),
      ChartData(gdp: 460, month: 'Dec'),
    ];

    return chartData;
  }

}

class ChartData {
  ChartData({required this.gdp, required this.month});

  final String month;
  final double gdp;
}
