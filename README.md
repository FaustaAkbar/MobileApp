# Flutter MobileApp

A Flutter application with three screens that checks for palindromes, displays a welcome message with user details, and lists users from an API. This app uses **GetX** for state management and is compatible with Flutter version **3.22 or above**.

## Features

- **Palindrome Checker**: Check if a sentence is a palindrome.
- **Dynamic Welcome Screen**: Display user input and selected user details.
- **User List**: Fetch and display users from an API with pagination and pull-to-refresh support.

### 1. First Screen

- Input for Name and Sentence.
- Check Palindrome Button.
- Navigate to the Next Screen.

### 2. Second Screen

- Static Welcome Message.
- Dynamic Display of Name and Selected User.
- Button to Choose a User.

### 3. Third Screen

- List of Users from reqres.in API.
- Pull-to-Refresh and Infinite Scrolling.
- Select a User to Update the Second Screen.

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/FaustaAkbar/MobileApp.git
   ```
2. Navigate to the project directory:
   ```bash
   cd MobileApp
   ```
3. Install dependencies:
   ```bash
   flutter pub get
   ```
4. Run the app:
   ```bash
   flutter run
   ```

## Dependencies

- **Flutter**: 3.22 or above
- **GetX**: State management

## API Reference

The app fetches user data from [reqres.in](https://reqres.in/):

- Endpoint: `https://reqres.in/api/users`
- Supports `page` and `per_page` parameters for pagination.

## Contributing

Contributions are welcome! Please open an issue or submit a pull request for any improvements.

## License

This project is licensed under the MIT License.
