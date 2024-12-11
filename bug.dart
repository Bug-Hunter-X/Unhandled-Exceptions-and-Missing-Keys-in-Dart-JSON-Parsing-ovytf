```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Success, process the JSON response
      final jsonData = jsonDecode(response.body);
      // Access the data from jsonData. 
      print(jsonData['key']); // Potential error if 'key' is missing
    } else {
      // Handle errors
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions like network errors
    print('Error fetching data: $e');
  }
}
```