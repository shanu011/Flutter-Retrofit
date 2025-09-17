import 'package:json_annotation/json_annotation.dart';

part 'employee.g.dart';

@JsonSerializable()
class Employee {
  final int id;

  @JsonKey(name: "employee_name")
  final String employeeName;

  @JsonKey(name: "employee_salary")
  final int employeeSalary;

  @JsonKey(name: "employee_age")
  final int employeeAge;

  @JsonKey(name: "profile_image")
  final String profileImage;

  Employee({
    required this.id,
    required this.employeeName,
    required this.employeeSalary,
    required this.employeeAge,
    required this.profileImage,
  });

  factory Employee.fromJson(Map<String, dynamic> json) =>
      _$EmployeeFromJson(json);

  Map<String, dynamic> toJson() => _$EmployeeToJson(this);
}
