import 'package:hlogistic/feature/screens/costCalculator/model/cost_calculator_model.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:flutter/material.dart';

class CountriesDataSource extends DataGridSource {
  /// Creates the employee data source class with required details.
  CountriesDataSource({required List<Countries> countriesData}) {

    _countriesData = countriesData
        .map<DataGridRow>((e) => DataGridRow(cells: [
              DataGridCell<String>(columnName: 'Country', value: e.country),
              DataGridCell<double>(columnName: 'Trucking', value: e.trucking),
              DataGridCell<double>(
                  columnName: 'FTL', value: e.ftl),
              DataGridCell<double>(columnName: 'Tonnage', value: e.tonnage),
              DataGridCell<double>(columnName: 'Lademeter', value: e.lademeter),
              DataGridCell<double>(columnName: 'CBM', value: e.cbm),
            ]))
        .toList();
  }

  List<DataGridRow> _countriesData = [];

  @override
  List<DataGridRow> get rows => _countriesData;

  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    return DataGridRowAdapter(
        
        cells: row.getCells().map<Widget>((e) {
      return Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(8.0),
        child: Text(e.value.toString()),
      );
    }).toList());
  }
}