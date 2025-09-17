import 'package:flutter/material.dart';
import '../repository/post_repository.dart';
import '../services/dio_client.dart';
import '../services/api_service.dart';
import '../models/employee_response.dart';

class PostViewModel extends ChangeNotifier {
  late final PostRepository _repository;
  EmployeeResponse? employeeResponse;
  bool isLoading = false;

  PostViewModel() {
    final dio = DioClient.getDio();
    final apiService = ApiService(dio);
    _repository = PostRepository(apiService);
  }

  Future<void> loadPosts() async {
    isLoading = true;
    notifyListeners();

    try {
      employeeResponse = await _repository.fetchPosts();
      debugPrint('Loaded ${employeeResponse?.data} employees');
    } catch (e, st) {
      debugPrint('Error fetching employees: $e\n$st');
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}
