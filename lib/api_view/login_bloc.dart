
import 'package:easylaze/api_view/util/streamed_value.dart';

class LoginBloc {
  LoginBloc._();
  static LoginBloc _instance;
  static LoginBloc getInstance() {
    if (_instance == null) _instance = LoginBloc._();
    return _instance;
  }

  final number = StreamedValue<String>();
  final password = StreamedValue<String>();
  final registeredNumber = StreamedValue<String>();

  bool isLoginDetailValidate() {
    bool isNumberValid = validateNumber();
    bool isPasswordValid = validatePassword();
    return isNumberValid && isPasswordValid;
  }

  bool updateNumberValidate() {
    bool isRegisteredNumberValid = validateRegisteredNumber();
    return isRegisteredNumberValid;
  }

  bool validateNumber() {
    bool isValid = number.outStream?.value?.isNotEmpty ?? false;
    if (!isValid) {
      return number.inStream("");
    }
    return isValid;
  }

  bool validatePassword() {
    bool isValid = password.outStream?.value?.isNotEmpty ?? false;
    if (!isValid) {
      return password.inStream("");
    }
    return isValid;
  }

  bool validateRegisteredNumber() {
    bool isValid = registeredNumber.outStream?.value?.isNotEmpty ?? false;
    if (!isValid) {
      return registeredNumber.inStream("");
    }
    return isValid;
    
    // bool isValid = registeredNumber.outStream?.value?.isNotEmpty ?? false;
    // if (!isValid) {
    //   registeredNumber.inStream("");
    // } else {
    //   isValid = registeredNumber.outStream?.value?.contains(
    //       // RegExp(r'([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})'));
    //       RegExp(
    //           r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$'));
    // }
    // return isValid;
  }
}
