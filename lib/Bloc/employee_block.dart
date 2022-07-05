// imports
//list of employees
//Stream controller
//Stream Sink gettter
//Constructor- add data; listen to changes
//core function
//dispose
//sink to add in pipe
//stream to get data from pipe
//pipe means data flow

import 'dart:async';
import 'Employee.dart';

//2. List of Employees

class EmployeeBloc {
  final List<Employee> _employeeList = [
    Employee(1, "Employee One", 10000.0),
    Employee(2, "Employee Two", 10000.0),
    Employee(3, "Employee Three", 10000.0),
    Employee(4, "Employee Four", 10000.0),
  ];

//3. Stream Controller

  final _emplyeeListStreamController = StreamController<List<Employee>>();

  //for increment and decrement
  final _employeeSalaryIncrementStreamController = StreamController<Employee>();
  final _employeeSalaryDecrementStreamController = StreamController<Employee>();

//4. Stream sink getter
  Stream<List<Employee>> get employeeListStream =>
      _emplyeeListStreamController.stream;

  StreamSink<List<Employee>> get employeeListSink =>
      _emplyeeListStreamController.sink;

  StreamSink<Employee> get employeeSalaryIncrement =>
      _employeeSalaryIncrementStreamController.sink;

  StreamSink<Employee> get employeeSalaryDecrement =>
      _employeeSalaryDecrementStreamController.sink;

  //4. Constructor
  EmployeeBloc() {
    _emplyeeListStreamController.add(_employeeList);
    _employeeSalaryIncrementStreamController.stream.listen(_incrementSalary);
    _employeeSalaryDecrementStreamController.stream.listen(_decrementSalary);
  }

  _incrementSalary(Employee employee) {
    double salary = employee.salary;

    double incrementedSalary = salary * 20 / 100;
    _employeeList[employee.id - 1].salary = salary + incrementedSalary;
    employeeListSink.add(_employeeList);
  }

  _decrementSalary(Employee employee) {
    double salary = employee.salary;
    double decrementedSalary = salary * 20 / 100;
    _employeeList[employee.id - 1].salary = salary - decrementedSalary;
    employeeListSink.add(_employeeList);
  }

  void dispose() {
    _employeeSalaryIncrementStreamController.close();
    _employeeSalaryDecrementStreamController.close();
  }
}
