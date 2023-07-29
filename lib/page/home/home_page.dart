import 'package:flutter/material.dart';
import 'package:pluto_grid/pluto_grid.dart';
import 'package:provider/provider.dart';

import 'home_page_view_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<HomeViewModel>();
    late final PlutoGridStateManager stateManager;
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await viewModel.loadData();
    });
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(24.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text('Ke ${viewModel.cars.length} makina te regjistruara ne databaze!'),
              SizedBox(
                width: 1000,
                height: 1000,
                child: PlutoGrid(
                  columns: _getColumns(viewModel.columnNames),
                  rows: _getRows(viewModel.cars),
                  columnGroups: _getColumnGroups(),
                  onLoaded: (PlutoGridOnLoadedEvent event) {
                    stateManager = event.stateManager;
                    stateManager.setShowColumnFilter(true);
                  },
                  onChanged: (PlutoGridOnChangedEvent event) {},
                  configuration: const PlutoGridConfiguration(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<PlutoColumn> _getColumns(Map<String, String> columnNames) {
    List<PlutoColumn> columns = [];
    columnNames.forEach(
      (key, value) => columns.add(PlutoColumn(title: value, field: key, type: PlutoColumnType.text())),
    );
    return columns;
  }

  List<PlutoRow> _getRows(List<dynamic> cars) {
    return cars
        .map((car) => PlutoRow(
              cells: {
                'id': PlutoCell(value: '${car['id']}'),
                'model': PlutoCell(value: car['model']),
                'year': PlutoCell(value: '${car['year']}'),
                'owner': PlutoCell(value: '${car['owner']['firstName']} ${car['owner']['lastName']}'),
              },
            ))
        .toList(growable: false);
  }

  List<PlutoColumnGroup>? _getColumnGroups() {
    return [
      PlutoColumnGroup(title: 'Id', fields: ['id'], expandedColumn: true),
      PlutoColumnGroup(title: 'Owner information', fields: ['owner']),
      PlutoColumnGroup(title: 'Car Information', children: [
        PlutoColumnGroup(title: 'Model', fields: ['model'], expandedColumn: true),
        PlutoColumnGroup(title: 'Year', fields: ['year']),
      ]),
    ];
  }
}
