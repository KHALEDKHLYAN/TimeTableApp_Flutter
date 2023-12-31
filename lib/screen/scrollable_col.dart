import 'package:flutter/material.dart';
import 'package:timetable_app/mocks/data.dart';


class ScrollableColumnWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
            headingRowColor: MaterialStateProperty.all(Colors.green[100]),
            columnSpacing: 40,
            decoration: BoxDecoration(
              border: Border(
                right: BorderSide(
                  color: Colors.grey,
                  width: 0.5,
                ),
              ),
            ),
            columns: [
              DataColumn(label: Text('Points')),
              DataColumn(label: Text('Won')),
              DataColumn(label: Text('Lost')),
              DataColumn(label: Text('Drawn')),
              DataColumn(label: Text('Against')),
              DataColumn(label: Text('GD')),
            ],
            rows: [
              ...teamsData
                  .map((team) => DataRow(
                        cells: [
                          DataCell(
                            Container(
                              alignment: AlignmentDirectional.center,
                              child: Text(
                                team.points.toString(),
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ))),
                          DataCell(
                            Container(
                              alignment: AlignmentDirectional.center,
                              child: Text(team.won.toString()))),
                          DataCell(
                            Container(
                              alignment: AlignmentDirectional.center,
                              child: Text(team.lost.toString()))),
                          DataCell(
                            Container(
                              alignment: AlignmentDirectional.center,
                              child: Text(team.drawn.toString()))),
                          DataCell(
                            Container(
                              alignment: AlignmentDirectional.center,
                              child: Text(team.against.toString()))),
                          DataCell(
                            Container(
                              alignment: AlignmentDirectional.center,
                              child: Text(team.gd.toString()))),
                        ],
                      ))
            ]),
      ),
    );
  }
}