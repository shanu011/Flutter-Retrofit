import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import '../models/employee_response.dart';
import '../models/post.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: "https://dummy.restapiexample.com")
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET("/api/v1/employees")
  Future<EmployeeResponse> getEmployee();

  @POST("/posts")
  Future<Post> createPost(@Body() Post post);
}
