import 'package:flutter/material.dart';
import 'package:hlogistic/product/components/drawer/navigation_rail.dart';
import 'package:hlogistic/feature/screens/costCalculator/model/cost_calculator_model.dart';
import 'package:hlogistic/feature/screens/costCalculator/model/datagrid_model.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class costCalculator extends StatefulWidget {
  costCalculator({Key? key}) : super(key: key);

  @override
  State<costCalculator> createState() => _costCalculatorState();
}

class _costCalculatorState extends State<costCalculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body:Container(color: Colors.pink,)
    );
  }
}


 List<Countries> getCountriesData() {
    return [
      Countries(country: "India",trucking: 4350,ftl: 2100,tonnage: 0.734,lademeter: 12,cbm: 11),
      Countries(country: "Usa",trucking: 4502,ftl: 240,tonnage: 0.54,lademeter: 22,cbm: 3),
      Countries(country: "german",trucking: 4450,ftl: 400,tonnage: 0.4,lademeter: 4,cbm: 4),
      Countries(country: "Italy",trucking: 40,ftl: 600,tonnage: 0.13,lademeter: 5,cbm: 12),
      Countries(country: "france",trucking: 1450,ftl: 800,tonnage: 0.234,lademeter: 2,cbm: 51),
         
      
    ];
  }



Widget gridTable(){

  List<Countries> countries = <Countries>[];
  late CountriesDataSource employeeDataSource;


    countries = getCountriesData();
    employeeDataSource = CountriesDataSource(countriesData: countries);

  return SfDataGrid(
        allowColumnsResizing: true,
        allowEditing: true,
        allowFiltering: true,
        allowSorting: true,
        allowSwiping: true,
        columnWidthMode: ColumnWidthMode.fill,
        selectionMode: SelectionMode.single,
        navigationMode: GridNavigationMode.cell,
        
        source: employeeDataSource,
        
        onCellTap: (details){
          countries[details.rowColumnIndex.rowIndex-1].country="sdaadfdfffafad";
          print(details.rowColumnIndex.columnIndex);
          print(details.rowColumnIndex.rowIndex);
        
        },
        columns: <GridColumn>[
          GridColumn(
              allowEditing: true,
              columnName: 'Country',
              label: Container(
                  padding: EdgeInsets.all(16.0),
                  alignment: Alignment.center,
                  child: Text(
                    'Country',
                  ))),
          GridColumn(
            allowEditing: true,
              columnName: 'Tracking',
              label: Container(
                  padding: EdgeInsets.all(8.0),
                  alignment: Alignment.center,
                  child: Text('Tracking'))),
          GridColumn(
            allowEditing: true,
              columnName: 'FTL',
              label: Container(
                  padding: EdgeInsets.all(8.0),
                  alignment: Alignment.center,
                  child: Text(
                    'FTL',
                    overflow: TextOverflow.ellipsis,
                  ))),
          GridColumn(
            allowEditing: true,
              columnName: 'Tonnage',
              label: Container(
                  padding: EdgeInsets.all(8.0),
                  alignment: Alignment.center,
                  child: Text('Tonnage'))),
          GridColumn(
            allowEditing: true,
              columnName: 'Lademeter',
              label: Container(
                  padding: EdgeInsets.all(8.0),
                  alignment: Alignment.center,
                  child: Text('Lademeter'))),
          GridColumn(
            allowEditing: true,
              columnName: 'CBM',
              label: Container(
                  padding: EdgeInsets.all(8.0),
                  alignment: Alignment.center,
                  child: Text('CBM'))),
        ],
        
      );
    


}




//  Row(
//         children: [
         
          
//           Expanded(child: Container(
//             color: Colors.grey,
//             child: Column(

//               children: [
//                 Row(
//                    children: [
//                     Container(child:DropDown(),width: 300,height: 300,color: Colors.transparent,),
//                     Expanded(child: gridTable(),)
                    
//                    ],
//                 ),
//                 const Divider(),
//                 Container(color: Colors.orange,height: 150,width: 150,),
//                 Container(color: Colors.yellow,height: 50,width: 50,),
//               ],
//             )
//           ))
//         ],
//       ),