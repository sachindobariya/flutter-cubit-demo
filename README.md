# **Cubit Login Form Demo**

This is a demo Flutter project showcasing how to manage a login form using Cubit from the `flutter_bloc` package. The example demonstrates form validation, loading states, and error handling using Cubit.

## **Features**
* Simple login form with validation.
* Loading spinner when login is in progress.
* Error handling for invalid credentials.
* Displays success or failure message using SnackBars.

## Getting Started
### Prerequisites
Ensure you have the following installed:
* [Flutter SDK](https://docs.flutter.dev/get-started/install)
* Dart 2.12 or later
* Any IDE with Flutter support (VS Code, Android Studio, IntelliJ)

### Dependencies
Add the following dependencies to your `pubspec.yaml` file:
`dependencies:
flutter:
sdk: flutter
flutter_bloc: ^8.1.6`

Run `flutter pub get` to install these dependencies.

### How It Works
The `LoginFormCubit` manages the state of the login form. It uses the following states:

* Initial State: When the form is empty and no action has been taken.
* Loading State: When the login process is ongoing.
* Success State: When login is successful.
* Failure State: When login fails (e.g., invalid credentials or empty fields).

## Demo Credentials

Use the following credentials to successfully log in:
### * Username: `user`
### * Password: `password`

Entering any other credentials will show an error message.

## Conclusion

This project demonstrates how to implement a simple login form using Cubit for state management. It covers handling different states like loading, error, and success with reactive UI updates using `BlocBuilder` and `BlocConsumer`.

Feel free to modify and extend the project as needed!





