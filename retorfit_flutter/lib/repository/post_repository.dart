import '../services/api_service.dart';
import '../models/employee_response.dart';
import '../models/post.dart';

class PostRepository {
  final ApiService apiService;

  PostRepository(this.apiService);

  Future<EmployeeResponse> fetchPosts() => apiService.getEmployee();

  Future<Post> addPost(Post post) => apiService.createPost(post);
}
