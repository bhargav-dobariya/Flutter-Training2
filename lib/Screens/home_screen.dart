import 'package:flutter/material.dart';
import 'package:google_login_app/Bloc/employee_block.dart';

import '../Bloc/Employee.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {  
  final EmployeeBloc _employeeBloc = EmployeeBloc();

  late double _deviceHeight;
  late double _deviceWidth;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _employeeBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;

    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Employee App"),
      ),
      body: StreamBuilder<List<Employee>>(
        stream: _employeeBloc.employeeListStream,
        builder:
            (BuildContext context, AsyncSnapshot<List<Employee>> snapshot) {
          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                elevation: 5.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        "${snapshot.data![index].id}",
                        style: const TextStyle(fontSize: 20),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            snapshot.data![index].name,
                            style: const TextStyle(fontSize: 18),
                          ),
                          Text(
                            "₹ ${snapshot.data![index].salary}",
                            style: const TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.thumb_up_sharp),
                      color: Colors.green,
                      onPressed: () {
                        _employeeBloc.employeeSalaryIncrement
                            .add(snapshot.data![index]);
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.thumb_down_sharp),
                      color: Colors.red,
                      onPressed: () {
                        _employeeBloc.employeeSalaryDecrement
                            .add(snapshot.data![index]);
                      },
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}