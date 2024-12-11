# Unhandled Exceptions and Missing Keys in Dart JSON Parsing

This repository demonstrates a common error in Dart when working with asynchronous operations and JSON parsing:  the lack of robust error handling for network requests and missing keys in JSON responses.

The `bug.dart` file contains the code with the potential errors. The `bugSolution.dart` file provides a corrected version with improved error handling.

## Bug Description

The original code attempts to fetch JSON data from an API. It fails to properly handle the following scenarios:

1. **Network errors:** The API request could fail due to network issues or server errors.
2. **Missing keys:** The JSON response might not contain the expected keys, leading to runtime exceptions when accessing them.

## Solution

The improved code in `bugSolution.dart` includes the following enhancements:

1. **More comprehensive exception handling:** The `try-catch` block handles potential exceptions during the API request and JSON decoding.
2. **Null checks:** Before accessing keys in the JSON response, the code checks if the keys exist and handles null values appropriately.
3. **Status Code Checking:** The solution checks the response status code to ensure a successful request before proceeding.

This example highlights the importance of robust error handling when working with external APIs and JSON data in Dart.