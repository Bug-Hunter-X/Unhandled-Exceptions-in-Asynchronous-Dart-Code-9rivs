```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      print(jsonData['key']);
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error in fetchData: $e');
    rethrow; // Re-throw to be handled by calling function
  }
}

void main() async {
  try {
    await fetchData();
  } catch (e) {
    print('Error in main: $e'); //Handle the exception here
    // Implement any appropriate error handling logic here such as logging or displaying error message to the user.
  }
}
```