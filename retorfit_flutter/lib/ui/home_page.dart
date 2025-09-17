import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodels/post_viewmodel.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final vm = Provider.of<PostViewModel>(context, listen: false);
    vm.loadPosts();
  }

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<PostViewModel>(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Employees')),
      body: vm.isLoading
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: vm.employeeResponse?.data.length ?? 0,
              itemBuilder: (context, i) {
                final emp = vm.employeeResponse!.data[i];
                return ListTile(
                  title: Text(emp.employeeName),
                  subtitle: Text(
                    'Salary: ${emp.employeeSalary}',
                  ),
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => vm.loadPosts(),
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
