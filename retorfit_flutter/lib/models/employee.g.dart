// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Employee _$EmployeeFromJson(Map<String, dynamic> json) => Employee(
  id: (json['id'] as num).toInt(),
  employeeName: json['employee_name'] as String,
  employeeSalary: (json['employee_salary'] as num).toInt(),
  employeeAge: (json['employee_age'] as num).toInt(),
  profileImage: json['profile_image'] as String,
);

Map<String, dynamic> _$EmployeeToJson(Employee instance) => <String, dynamic>{
  'id': instance.id,
  'employee_name': instance.employeeName,
  'employee_salary': instance.employeeSalary,
  'employee_age': instance.employeeAge,
  'profile_image': instance.profileImage,
};
