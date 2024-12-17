```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the response body is a JSON string
      final jsonData = jsonDecode(response.body);
      // Access data from the JSON object
      print(jsonData['key']); // Example: Accessing a specific key
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions appropriately, such as network errors or JSON decoding errors
    print('Error: $e');
    rethrow; //Re-throw the exception to handle at the calling function
  }
}

void main() async {
  await fetchData();
}
```