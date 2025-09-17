# Retrofit MVVM Example (minimal)

This example shows a small, focused structure for using Retrofit + Dio + json_serializable in an MVVM style.

Important notes:
- The project includes Retrofit interface files that require code generation.
- Run the following from project root to generate code:

  flutter pub get
  flutter pub run build_runner build --delete-conflicting-outputs

- If you don't want to run codegen, you can replace ApiService usage with direct Dio calls (see comment in services).

Files:
- lib/services/api_service.dart  -> Retrofit interface
- lib/services/dio_client.dart  -> configured Dio instance
- lib/models/*                  -> models with json_serializable annotations
- lib/repository/*              -> repository wrapper around ApiService
- lib/viewmodels/*              -> ViewModel using repository + Provider
- lib/ui/*                      -> simple UI showing employees
